<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% pageContext.setAttribute("newLineChar", "\n"); %>

<table style="width:700px">
    <c:forEach var="row" items="${list}">
        <c:set var="str" value="${fn:replace(row.reply_text, ' ', '&nbsp;&nbsp;')}" />
        <c:set var="str" value="${fn:replace(str, newLineChar, '<br>')}" />
        <tr>
            <td>${row.name} (<fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd HH:mm:ss" /> )<br>${str}
                <c:if test="${sessionScope.userid == row.replyer}">
                    <input type="button" value="Modify" onclick="showModify('${row.idx}')">
                </c:if>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td>
            <c:if test="${page_info.curBlock > 1}">
                <a href="#" onclick="listReply('${page_info.prevPage}')">[이전]</a>&nbsp;
            </c:if>
            <c:forEach var="num" begin="${page_info.blockBegin}" end="${page_info.blockEnd}">
                <c:choose>
                    <c:when test="${num == page_info.curPage}">
                        ${num}&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="#" onclick="listReply('${num}')">${num}</a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:if test="${page_info.curBlock <= page_info.totBlock}">
                <a href="#" onclick="listReply('${page_info.nextPage}')">[다음]</a>&nbsp;
            </c:if>
        </td>
    </tr>
</table>
