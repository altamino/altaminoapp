package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.IOException;
import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes8.dex */
public class JsonMappingException extends JsonProcessingException {
    static final int MAX_REFS_TO_LIST = 1000;
    private static final long serialVersionUID = 1;
    protected LinkedList<Reference> _path;

    public static class Reference implements Serializable {
        private static final long serialVersionUID = 1;
        protected String _fieldName;
        protected Object _from;
        protected int _index;

        protected Reference() {
            this._index = -1;
        }

        public String getFieldName() {
            return this._fieldName;
        }

        public Object getFrom() {
            return this._from;
        }

        public int getIndex() {
            return this._index;
        }

        public void setFieldName(String str) {
            this._fieldName = str;
        }

        public void setFrom(Object obj) {
            this._from = obj;
        }

        public void setIndex(int i10) {
            this._index = i10;
        }

        public Reference(Object obj) {
            this._index = -1;
            this._from = obj;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Object obj = this._from;
            Class<?> cls = obj instanceof Class ? (Class) obj : obj.getClass();
            Package r5 = cls.getPackage();
            if (r5 != null) {
                sb.append(r5.getName());
                sb.append('.');
            }
            sb.append(cls.getSimpleName());
            sb.append(b.BEGIN_LIST);
            if (this._fieldName != null) {
                sb.append(b.STRING);
                sb.append(this._fieldName);
                sb.append(b.STRING);
            } else {
                int i10 = this._index;
                if (i10 >= 0) {
                    sb.append(i10);
                } else {
                    sb.append('?');
                }
            }
            sb.append(b.END_LIST);
            return sb.toString();
        }

        public Reference(Object obj, String str) {
            this._index = -1;
            this._from = obj;
            if (str == null) {
                throw new NullPointerException("Can not pass null fieldName");
            }
            this._fieldName = str;
        }

        public Reference(Object obj, int i10) {
            this._from = obj;
            this._index = i10;
        }
    }

    public JsonMappingException(String str) {
        super(str);
    }

    public static JsonMappingException from(JsonParser jsonParser, String str) {
        return new JsonMappingException(str, jsonParser == null ? null : jsonParser.getTokenLocation());
    }

    public static JsonMappingException wrapWithPath(Throwable th, Object obj, String str) {
        return wrapWithPath(th, new Reference(obj, str));
    }

    public String getPathReference() {
        return getPathReference(new StringBuilder()).toString();
    }

    public void prependPath(Object obj, String str) {
        prependPath(new Reference(obj, str));
    }

    public JsonMappingException(String str, Throwable th) {
        super(str, th);
    }

    public static JsonMappingException from(JsonParser jsonParser, String str, Throwable th) {
        return new JsonMappingException(str, jsonParser == null ? null : jsonParser.getTokenLocation(), th);
    }

    public static JsonMappingException fromUnexpectedIOE(IOException iOException) {
        return new JsonMappingException("Unexpected IOException (of type " + iOException.getClass().getName() + "): " + iOException.getMessage(), null, iOException);
    }

    public static JsonMappingException wrapWithPath(Throwable th, Object obj, int i10) {
        return wrapWithPath(th, new Reference(obj, i10));
    }

    protected void _appendPathDesc(StringBuilder sb) {
        LinkedList<Reference> linkedList = this._path;
        if (linkedList == null) {
            return;
        }
        Iterator<Reference> it = linkedList.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append("->");
            }
        }
    }

    public List<Reference> getPath() {
        LinkedList<Reference> linkedList = this._path;
        return linkedList == null ? Collections.emptyList() : Collections.unmodifiableList(linkedList);
    }

    public StringBuilder getPathReference(StringBuilder sb) {
        _appendPathDesc(sb);
        return sb;
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }

    public JsonMappingException(String str, JsonLocation jsonLocation) {
        super(str, jsonLocation);
    }

    public static JsonMappingException wrapWithPath(Throwable th, Reference reference) {
        JsonMappingException jsonMappingException;
        if (th instanceof JsonMappingException) {
            jsonMappingException = (JsonMappingException) th;
        } else {
            String message = th.getMessage();
            if (message == null || message.length() == 0) {
                message = "(was " + th.getClass().getName() + ")";
            }
            jsonMappingException = new JsonMappingException(message, null, th);
        }
        jsonMappingException.prependPath(reference);
        return jsonMappingException;
    }

    protected String _buildMessage() {
        StringBuilder sb;
        String message = super.getMessage();
        if (this._path == null) {
            return message;
        }
        if (message == null) {
            sb = new StringBuilder();
        } else {
            sb = new StringBuilder(message);
        }
        sb.append(" (through reference chain: ");
        StringBuilder pathReference = getPathReference(sb);
        pathReference.append(')');
        return pathReference.toString();
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return _buildMessage();
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public String getMessage() {
        return _buildMessage();
    }

    public void prependPath(Object obj, int i10) {
        prependPath(new Reference(obj, i10));
    }

    public JsonMappingException(String str, JsonLocation jsonLocation, Throwable th) {
        super(str, jsonLocation, th);
    }

    public void prependPath(Reference reference) {
        if (this._path == null) {
            this._path = new LinkedList<>();
        }
        if (this._path.size() < 1000) {
            this._path.addFirst(reference);
        }
    }
}
