package com.fasterxml.jackson.databind.node;

import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes10.dex */
public interface JsonNodeCreator {
    ArrayNode arrayNode();

    ValueNode binaryNode(byte[] bArr);

    ValueNode binaryNode(byte[] bArr, int i10, int i11);

    ValueNode booleanNode(boolean z6);

    ValueNode nullNode();

    ValueNode numberNode(byte b7);

    ValueNode numberNode(double d);

    ValueNode numberNode(float f);

    ValueNode numberNode(int i10);

    ValueNode numberNode(long j6);

    ValueNode numberNode(Byte b7);

    ValueNode numberNode(Double d);

    ValueNode numberNode(Float f);

    ValueNode numberNode(Integer num);

    ValueNode numberNode(Long l);

    ValueNode numberNode(Short sh);

    ValueNode numberNode(BigDecimal bigDecimal);

    ValueNode numberNode(BigInteger bigInteger);

    ValueNode numberNode(short s);

    ObjectNode objectNode();

    ValueNode pojoNode(Object obj);

    ValueNode textNode(String str);
}
