package com.fasterxml.jackson.core;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class ObjectCodec extends TreeCodec implements Versioned {
    public abstract <T extends TreeNode> T readTree(JsonParser jsonParser) throws IOException;

    public abstract void writeValue(JsonGenerator jsonGenerator, Object obj) throws IOException;

    protected ObjectCodec() {
    }

    @Override // com.fasterxml.jackson.core.Versioned
    public Version version() {
        return Version.unknownVersion();
    }
}
