package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.io.IOException;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes11.dex */
public class TextNode extends ValueNode {
    static final TextNode EMPTY_STRING_NODE = new TextNode("");
    static final int INT_SPACE = 32;
    final String _value;

    protected void _reportInvalidBase64(Base64Variant base64Variant, char c7, int i10) throws JsonParseException {
        _reportInvalidBase64(base64Variant, c7, i10, null);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText() {
        return this._value;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String textValue() {
        return this._value;
    }

    protected static void appendQuoted(StringBuilder sb, String str) {
        sb.append(b.STRING);
        CharTypes.appendQuoted(sb, str);
        sb.append(b.STRING);
    }

    public static TextNode valueOf(String str) {
        if (str == null) {
            return null;
        }
        return str.length() == 0 ? EMPTY_STRING_NODE : new TextNode(str);
    }

    protected void _reportBase64EOF() throws JsonParseException {
        throw new JsonParseException("Unexpected end-of-String when base64 content", JsonLocation.NA);
    }

    protected void _reportInvalidBase64(Base64Variant base64Variant, char c7, int i10, String str) throws JsonParseException {
        String str2;
        if (c7 <= ' ') {
            str2 = "Illegal white space character (code 0x" + Integer.toHexString(c7) + ") as character #" + (i10 + 1) + " of 4-char base64 unit: can only used between units";
        } else if (base64Variant.usesPaddingChar(c7)) {
            str2 = "Unexpected padding character ('" + base64Variant.getPaddingChar() + "') as character #" + (i10 + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
        } else if (!Character.isDefined(c7) || Character.isISOControl(c7)) {
            str2 = "Illegal character (code 0x" + Integer.toHexString(c7) + ") in base64 content";
        } else {
            str2 = "Illegal character '" + c7 + "' (code 0x" + Integer.toHexString(c7) + ") in base64 content";
        }
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        throw new JsonParseException(str2, JsonLocation.NA);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean asBoolean(boolean z6) {
        String str = this._value;
        if (str == null) {
            return z6;
        }
        String strTrim = str.trim();
        if ("true".equals(strTrim)) {
            return true;
        }
        if ("false".equals(strTrim)) {
            return false;
        }
        return z6;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public double asDouble(double d) {
        return NumberInput.parseAsDouble(this._value, d);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public int asInt(int i10) {
        return NumberInput.parseAsInt(this._value, i10);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public long asLong(long j6) {
        return NumberInput.parseAsLong(this._value, j6);
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public JsonToken asToken() {
        return JsonToken.VALUE_STRING;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof TextNode)) {
            return ((TextNode) obj)._value.equals(this._value);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0063  */
    /* JADX WARN: Code duplicated, block: B:28:0x0068  */
    /* JADX WARN: Code duplicated, block: B:31:0x0077  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:42:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:51:0x009b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x0061 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x00c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00bb A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:31:0x0077, please report this as an issue */
    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException {
        int i10;
        char cCharAt;
        int i11;
        char cCharAt2;
        int iDecodeBase64Char;
        char cCharAt3;
        int i12;
        char cCharAt4;
        int iDecodeBase64Char2;
        ByteArrayBuilder byteArrayBuilder = new ByteArrayBuilder(100);
        String str = this._value;
        int length = str.length();
        int i13 = 0;
        loop0: while (i13 < length) {
            while (true) {
                i10 = i13 + 1;
                cCharAt = str.charAt(i13);
                if (i10 >= length) {
                    break loop0;
                }
                if (cCharAt > ' ') {
                    break;
                }
                i13 = i10;
            }
            int iDecodeBase64Char3 = base64Variant.decodeBase64Char(cCharAt);
            if (iDecodeBase64Char3 < 0) {
                _reportInvalidBase64(base64Variant, cCharAt, 0);
            }
            if (i10 >= length) {
                _reportBase64EOF();
            }
            int i14 = i13 + 2;
            char cCharAt5 = str.charAt(i10);
            int iDecodeBase64Char4 = base64Variant.decodeBase64Char(cCharAt5);
            if (iDecodeBase64Char4 < 0) {
                _reportInvalidBase64(base64Variant, cCharAt5, 1);
            }
            int i15 = (iDecodeBase64Char3 << 6) | iDecodeBase64Char4;
            if (i14 < length) {
                i11 = i13 + 3;
                cCharAt2 = str.charAt(i14);
                iDecodeBase64Char = base64Variant.decodeBase64Char(cCharAt2);
                if (iDecodeBase64Char < 0) {
                    if (iDecodeBase64Char != -2) {
                        _reportInvalidBase64(base64Variant, cCharAt2, 2);
                    }
                    if (i11 >= length) {
                        _reportBase64EOF();
                    }
                    i13 += 4;
                    cCharAt3 = str.charAt(i11);
                    if (!base64Variant.usesPaddingChar(cCharAt3)) {
                        _reportInvalidBase64(base64Variant, cCharAt3, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                    }
                    byteArrayBuilder.append(i15 >> 4);
                } else {
                    i12 = (i15 << 6) | iDecodeBase64Char;
                    if (i11 >= length) {
                        if (!base64Variant.usesPadding()) {
                            byteArrayBuilder.appendTwoBytes(i12 >> 2);
                            break;
                        }
                        _reportBase64EOF();
                    }
                    i13 += 4;
                    cCharAt4 = str.charAt(i11);
                    iDecodeBase64Char2 = base64Variant.decodeBase64Char(cCharAt4);
                    if (iDecodeBase64Char2 < 0) {
                        if (iDecodeBase64Char2 != -2) {
                            _reportInvalidBase64(base64Variant, cCharAt4, 3);
                        }
                        byteArrayBuilder.appendTwoBytes(i12 >> 2);
                    } else {
                        byteArrayBuilder.appendThreeBytes((i12 << 6) | iDecodeBase64Char2);
                    }
                }
            } else {
                if (!base64Variant.usesPadding()) {
                    byteArrayBuilder.append(i15 >> 4);
                    break;
                }
                _reportBase64EOF();
                i11 = i13 + 3;
                cCharAt2 = str.charAt(i14);
                iDecodeBase64Char = base64Variant.decodeBase64Char(cCharAt2);
                if (iDecodeBase64Char < 0) {
                    if (iDecodeBase64Char != -2) {
                        _reportInvalidBase64(base64Variant, cCharAt2, 2);
                    }
                    if (i11 >= length) {
                        _reportBase64EOF();
                    }
                    i13 += 4;
                    cCharAt3 = str.charAt(i11);
                    if (!base64Variant.usesPaddingChar(cCharAt3)) {
                        _reportInvalidBase64(base64Variant, cCharAt3, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                    }
                    byteArrayBuilder.append(i15 >> 4);
                } else {
                    i12 = (i15 << 6) | iDecodeBase64Char;
                    if (i11 >= length) {
                        if (!base64Variant.usesPadding()) {
                            byteArrayBuilder.appendTwoBytes(i12 >> 2);
                            break;
                        }
                        _reportBase64EOF();
                    }
                    i13 += 4;
                    cCharAt4 = str.charAt(i11);
                    iDecodeBase64Char2 = base64Variant.decodeBase64Char(cCharAt4);
                    if (iDecodeBase64Char2 < 0) {
                        if (iDecodeBase64Char2 != -2) {
                            _reportInvalidBase64(base64Variant, cCharAt4, 3);
                        }
                        byteArrayBuilder.appendTwoBytes(i12 >> 2);
                    } else {
                        byteArrayBuilder.appendThreeBytes((i12 << 6) | iDecodeBase64Char2);
                    }
                }
            }
        }
        return byteArrayBuilder.toByteArray();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public JsonNodeType getNodeType() {
        return JsonNodeType.STRING;
    }

    public int hashCode() {
        return this._value.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public final void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        String str = this._value;
        if (str == null) {
            jsonGenerator.writeNull();
        } else {
            jsonGenerator.writeString(str);
        }
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.JsonNode
    public String toString() {
        int length = this._value.length();
        StringBuilder sb = new StringBuilder(length + 2 + (length >> 4));
        appendQuoted(sb, this._value);
        return sb.toString();
    }

    public TextNode(String str) {
        this._value = str;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public byte[] binaryValue() throws IOException {
        return getBinaryValue(Base64Variants.getDefaultVariant());
    }
}
