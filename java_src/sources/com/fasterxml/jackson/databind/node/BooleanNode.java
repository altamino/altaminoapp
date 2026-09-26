package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.google.firebase.remoteconfig.a;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public class BooleanNode extends ValueNode {
    private final boolean _value;
    public static final BooleanNode TRUE = new BooleanNode(true);
    public static final BooleanNode FALSE = new BooleanNode(false);

    public static BooleanNode getFalse() {
        return FALSE;
    }

    public static BooleanNode getTrue() {
        return TRUE;
    }

    public static BooleanNode valueOf(boolean z6) {
        return z6 ? TRUE : FALSE;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean asBoolean() {
        return this._value;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public double asDouble(double d) {
        if (this._value) {
            return 1.0d;
        }
        return a.DEFAULT_VALUE_FOR_DOUBLE;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public int asInt(int i10) {
        return this._value ? 1 : 0;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public long asLong(long j6) {
        return this._value ? 1L : 0L;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText() {
        return this._value ? "true" : "false";
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean booleanValue() {
        return this._value;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && (obj instanceof BooleanNode) && this._value == ((BooleanNode) obj)._value;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean asBoolean(boolean z6) {
        return this._value;
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public JsonToken asToken() {
        return this._value ? JsonToken.VALUE_TRUE : JsonToken.VALUE_FALSE;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNodeType getNodeType() {
        return JsonNodeType.BOOLEAN;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public final void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeBoolean(this._value);
    }

    private BooleanNode(boolean z6) {
        this._value = z6;
    }
}
