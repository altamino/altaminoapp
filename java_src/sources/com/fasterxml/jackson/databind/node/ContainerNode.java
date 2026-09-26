package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ContainerNode;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes10.dex */
public abstract class ContainerNode<T extends ContainerNode<T>> extends BaseJsonNode implements JsonNodeCreator {
    protected final JsonNodeFactory _nodeFactory;

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText() {
        return "";
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public abstract JsonToken asToken();

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    public abstract JsonNode get(int i10);

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    public abstract JsonNode get(String str);

    public abstract T removeAll();

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    public abstract int size();

    @Deprecated
    public final POJONode POJONode(Object obj) {
        return (POJONode) this._nodeFactory.pojoNode(obj);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ArrayNode arrayNode() {
        return this._nodeFactory.arrayNode();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final BooleanNode booleanNode(boolean z6) {
        return this._nodeFactory.booleanNode(z6);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NullNode nullNode() {
        return this._nodeFactory.nullNode();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ObjectNode objectNode() {
        return this._nodeFactory.objectNode();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode pojoNode(Object obj) {
        return this._nodeFactory.pojoNode(obj);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final TextNode textNode(String str) {
        return this._nodeFactory.textNode(str);
    }

    protected ContainerNode(JsonNodeFactory jsonNodeFactory) {
        this._nodeFactory = jsonNodeFactory;
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final BinaryNode binaryNode(byte[] bArr) {
        return this._nodeFactory.binaryNode(bArr);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final BinaryNode binaryNode(byte[] bArr, int i10, int i11) {
        return this._nodeFactory.binaryNode(bArr, i10, i11);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(byte b7) {
        return this._nodeFactory.numberNode(b7);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(short s) {
        return this._nodeFactory.numberNode(s);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(int i10) {
        return this._nodeFactory.numberNode(i10);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(long j6) {
        return this._nodeFactory.numberNode(j6);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(BigInteger bigInteger) {
        return this._nodeFactory.numberNode(bigInteger);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(float f) {
        return this._nodeFactory.numberNode(f);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(double d) {
        return this._nodeFactory.numberNode(d);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(BigDecimal bigDecimal) {
        return this._nodeFactory.numberNode(bigDecimal);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Byte b7) {
        return this._nodeFactory.numberNode(b7);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Short sh) {
        return this._nodeFactory.numberNode(sh);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Integer num) {
        return this._nodeFactory.numberNode(num);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Long l) {
        return this._nodeFactory.numberNode(l);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Float f) {
        return this._nodeFactory.numberNode(f);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Double d) {
        return this._nodeFactory.numberNode(d);
    }
}
