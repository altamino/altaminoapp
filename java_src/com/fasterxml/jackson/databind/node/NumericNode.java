package com.fasterxml.jackson.databind.node;

/* loaded from: classes.dex */
public abstract class NumericNode extends ValueNode {
    protected NumericNode() {
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final JsonNodeType getNodeType() {
        return JsonNodeType.NUMBER;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final int asInt() {
        return intValue();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final int asInt(int i) {
        return intValue();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public final double asDouble(double d) {
        return doubleValue();
    }
}
