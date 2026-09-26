package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.google.firebase.sessions.settings.c;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes6.dex */
public class JsonWriteContext extends JsonStreamContext {
    public static final int STATUS_EXPECT_NAME = 5;
    public static final int STATUS_EXPECT_VALUE = 4;
    public static final int STATUS_OK_AFTER_COLON = 2;
    public static final int STATUS_OK_AFTER_COMMA = 1;
    public static final int STATUS_OK_AFTER_SPACE = 3;
    public static final int STATUS_OK_AS_IS = 0;
    protected JsonWriteContext _child = null;
    protected String _currentName;
    protected final DupDetector _dups;
    protected boolean _gotName;
    protected final JsonWriteContext _parent;

    @Deprecated
    public static JsonWriteContext createRootContext() {
        return createRootContext(null);
    }

    @Override // com.fasterxml.jackson.core.JsonStreamContext
    public final String getCurrentName() {
        return this._currentName;
    }

    @Override // com.fasterxml.jackson.core.JsonStreamContext
    public final JsonWriteContext getParent() {
        return this._parent;
    }

    public final int writeFieldName(String str) throws JsonProcessingException {
        this._gotName = true;
        this._currentName = str;
        DupDetector dupDetector = this._dups;
        if (dupDetector != null) {
            _checkDup(dupDetector, str);
        }
        return this._index < 0 ? 0 : 1;
    }

    public final int writeValue() {
        int i10 = this._type;
        if (i10 == 2) {
            this._gotName = false;
            this._index++;
            return 2;
        }
        if (i10 == 1) {
            int i11 = this._index;
            this._index = i11 + 1;
            return i11 < 0 ? 0 : 1;
        }
        int i12 = this._index + 1;
        this._index = i12;
        return i12 == 0 ? 0 : 3;
    }

    public static JsonWriteContext createRootContext(DupDetector dupDetector) {
        return new JsonWriteContext(0, null, dupDetector);
    }

    protected final void appendDesc(StringBuilder sb) {
        int i10 = this._type;
        if (i10 != 2) {
            if (i10 != 1) {
                sb.append(c.FORWARD_SLASH_STRING);
                return;
            }
            sb.append(b.BEGIN_LIST);
            sb.append(getCurrentIndex());
            sb.append(b.END_LIST);
            return;
        }
        sb.append(b.BEGIN_OBJ);
        if (this._currentName != null) {
            sb.append(b.STRING);
            sb.append(this._currentName);
            sb.append(b.STRING);
        } else {
            sb.append('?');
        }
        sb.append(b.END_OBJ);
    }

    public JsonWriteContext createChildArrayContext() {
        JsonWriteContext jsonWriteContext = this._child;
        if (jsonWriteContext != null) {
            return jsonWriteContext.reset(1);
        }
        DupDetector dupDetector = this._dups;
        JsonWriteContext jsonWriteContext2 = new JsonWriteContext(1, this, dupDetector == null ? null : dupDetector.child());
        this._child = jsonWriteContext2;
        return jsonWriteContext2;
    }

    public JsonWriteContext createChildObjectContext() {
        JsonWriteContext jsonWriteContext = this._child;
        if (jsonWriteContext != null) {
            return jsonWriteContext.reset(2);
        }
        DupDetector dupDetector = this._dups;
        JsonWriteContext jsonWriteContext2 = new JsonWriteContext(2, this, dupDetector == null ? null : dupDetector.child());
        this._child = jsonWriteContext2;
        return jsonWriteContext2;
    }

    protected JsonWriteContext reset(int i10) {
        this._type = i10;
        this._index = -1;
        this._currentName = null;
        this._gotName = false;
        DupDetector dupDetector = this._dups;
        if (dupDetector != null) {
            dupDetector.reset();
        }
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        appendDesc(sb);
        return sb.toString();
    }

    protected JsonWriteContext(int i10, JsonWriteContext jsonWriteContext, DupDetector dupDetector) {
        this._type = i10;
        this._parent = jsonWriteContext;
        this._dups = dupDetector;
        this._index = -1;
    }

    private void _checkDup(DupDetector dupDetector, String str) throws JsonProcessingException {
        if (!dupDetector.isDup(str)) {
            return;
        }
        throw new JsonGenerationException("Duplicate field '" + str + "'");
    }
}
