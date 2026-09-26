package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonPointer;
import com.fasterxml.jackson.core.TreeNode;
import com.fasterxml.jackson.databind.node.JsonNodeType;
import com.fasterxml.jackson.databind.node.MissingNode;
import com.fasterxml.jackson.databind.util.EmptyIterator;
import com.google.firebase.remoteconfig.a;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class JsonNode implements TreeNode, Iterable<JsonNode> {
    protected JsonNode() {
    }

    protected abstract JsonNode _at(JsonPointer jsonPointer);

    public boolean asBoolean(boolean z6) {
        return z6;
    }

    public double asDouble(double d) {
        return d;
    }

    public int asInt(int i10) {
        return i10;
    }

    public long asLong(long j6) {
        return j6;
    }

    public abstract String asText();

    public byte[] binaryValue() throws IOException {
        return null;
    }

    public boolean booleanValue() {
        return false;
    }

    public boolean canConvertToInt() {
        return false;
    }

    public boolean canConvertToLong() {
        return false;
    }

    public abstract <T extends JsonNode> T deepCopy();

    public double doubleValue() {
        return a.DEFAULT_VALUE_FOR_DOUBLE;
    }

    public abstract boolean equals(Object obj);

    public abstract JsonNode findParent(String str);

    public final List<JsonNode> findParents(String str) {
        List<JsonNode> listFindParents = findParents(str, null);
        return listFindParents == null ? Collections.emptyList() : listFindParents;
    }

    public abstract List<JsonNode> findParents(String str, List<JsonNode> list);

    public abstract JsonNode findPath(String str);

    public abstract JsonNode findValue(String str);

    public final List<JsonNode> findValues(String str) {
        List<JsonNode> listFindValues = findValues(str, null);
        return listFindValues == null ? Collections.emptyList() : listFindValues;
    }

    public abstract List<JsonNode> findValues(String str, List<JsonNode> list);

    public final List<String> findValuesAsText(String str) {
        List<String> listFindValuesAsText = findValuesAsText(str, null);
        return listFindValuesAsText == null ? Collections.emptyList() : listFindValuesAsText;
    }

    public abstract List<String> findValuesAsText(String str, List<String> list);

    public float floatValue() {
        return 0.0f;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public abstract JsonNode get(int i10);

    @Override // com.fasterxml.jackson.core.TreeNode
    public JsonNode get(String str) {
        return null;
    }

    public abstract JsonNodeType getNodeType();

    public boolean has(String str) {
        return get(str) != null;
    }

    public boolean hasNonNull(String str) {
        JsonNode jsonNode = get(str);
        return (jsonNode == null || jsonNode.isNull()) ? false : true;
    }

    public int intValue() {
        return 0;
    }

    public boolean isBigDecimal() {
        return false;
    }

    public boolean isBigInteger() {
        return false;
    }

    public boolean isDouble() {
        return false;
    }

    public boolean isFloat() {
        return false;
    }

    public boolean isFloatingPointNumber() {
        return false;
    }

    public boolean isInt() {
        return false;
    }

    public boolean isIntegralNumber() {
        return false;
    }

    public boolean isLong() {
        return false;
    }

    public boolean isShort() {
        return false;
    }

    public long longValue() {
        return 0L;
    }

    public Number numberValue() {
        return null;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public abstract JsonNode path(int i10);

    @Override // com.fasterxml.jackson.core.TreeNode
    public abstract JsonNode path(String str);

    public short shortValue() {
        return (short) 0;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public int size() {
        return 0;
    }

    public String textValue() {
        return null;
    }

    public abstract String toString();

    /* JADX INFO: renamed from: com.fasterxml.jackson.databind.JsonNode$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType;

        static {
            int[] iArr = new int[JsonNodeType.values().length];
            $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType = iArr;
            try {
                iArr[JsonNodeType.ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[JsonNodeType.OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[JsonNodeType.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean asBoolean() {
        return asBoolean(false);
    }

    public double asDouble() {
        return asDouble(a.DEFAULT_VALUE_FOR_DOUBLE);
    }

    public int asInt() {
        return asInt(0);
    }

    public long asLong() {
        return asLong(0L);
    }

    public BigInteger bigIntegerValue() {
        return BigInteger.ZERO;
    }

    public BigDecimal decimalValue() {
        return BigDecimal.ZERO;
    }

    public boolean has(int i10) {
        return get(i10) != null;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public final boolean isValueNode() {
        int i10 = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[getNodeType().ordinal()];
        return (i10 == 1 || i10 == 2 || i10 == 3) ? false : true;
    }

    public JsonNode with(String str) {
        throw new UnsupportedOperationException("JsonNode not of type ObjectNode (but " + getClass().getName() + "), can not call with() on it");
    }

    public JsonNode withArray(String str) {
        throw new UnsupportedOperationException("JsonNode not of type ObjectNode (but " + getClass().getName() + "), can not call withArray() on it");
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public final JsonNode at(JsonPointer jsonPointer) {
        if (jsonPointer.matches()) {
            return this;
        }
        JsonNode jsonNode_at = _at(jsonPointer);
        if (jsonNode_at == null) {
            return MissingNode.getInstance();
        }
        return jsonNode_at.at(jsonPointer.tail());
    }

    public Iterator<JsonNode> elements() {
        return EmptyIterator.instance();
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public Iterator<String> fieldNames() {
        return EmptyIterator.instance();
    }

    public Iterator<Map.Entry<String, JsonNode>> fields() {
        return EmptyIterator.instance();
    }

    public boolean hasNonNull(int i10) {
        JsonNode jsonNode = get(i10);
        return (jsonNode == null || jsonNode.isNull()) ? false : true;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public final boolean isArray() {
        if (getNodeType() == JsonNodeType.ARRAY) {
            return true;
        }
        return false;
    }

    public final boolean isBinary() {
        if (getNodeType() == JsonNodeType.BINARY) {
            return true;
        }
        return false;
    }

    public final boolean isBoolean() {
        if (getNodeType() == JsonNodeType.BOOLEAN) {
            return true;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public final boolean isContainerNode() {
        JsonNodeType nodeType = getNodeType();
        if (nodeType != JsonNodeType.OBJECT && nodeType != JsonNodeType.ARRAY) {
            return false;
        }
        return true;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public final boolean isMissingNode() {
        if (getNodeType() == JsonNodeType.MISSING) {
            return true;
        }
        return false;
    }

    public final boolean isNull() {
        if (getNodeType() == JsonNodeType.NULL) {
            return true;
        }
        return false;
    }

    public final boolean isNumber() {
        if (getNodeType() == JsonNodeType.NUMBER) {
            return true;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public final boolean isObject() {
        if (getNodeType() == JsonNodeType.OBJECT) {
            return true;
        }
        return false;
    }

    public final boolean isPojo() {
        if (getNodeType() == JsonNodeType.POJO) {
            return true;
        }
        return false;
    }

    public final boolean isTextual() {
        if (getNodeType() == JsonNodeType.STRING) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator<JsonNode> iterator() {
        return elements();
    }

    @Override // com.fasterxml.jackson.core.TreeNode
    public final JsonNode at(String str) {
        return at(JsonPointer.compile(str));
    }
}
