package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.impl.ReadOnlyClassToSerializerMap;
import java.util.HashMap;

/* JADX INFO: loaded from: classes10.dex */
public final class SerializerCache {
    private HashMap<TypeKey, JsonSerializer<Object>> _sharedMap = new HashMap<>(64);
    private volatile ReadOnlyClassToSerializerMap _readOnlyMap = null;

    public static final class TypeKey {
        protected Class<?> _class;
        protected int _hashCode;
        protected boolean _isTyped;
        protected JavaType _type;

        public TypeKey(Class<?> cls, boolean z6) {
            this._class = cls;
            this._type = null;
            this._isTyped = z6;
            this._hashCode = hash(cls, z6);
        }

        private static final int hash(Class<?> cls, boolean z6) {
            int iHashCode = cls.getName().hashCode();
            return z6 ? iHashCode + 1 : iHashCode;
        }

        public final boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            if (obj.getClass() != TypeKey.class) {
                return false;
            }
            TypeKey typeKey = (TypeKey) obj;
            if (typeKey._isTyped != this._isTyped) {
                return false;
            }
            Class<?> cls = this._class;
            if (cls != null) {
                return typeKey._class == cls;
            }
            return this._type.equals(typeKey._type);
        }

        public final int hashCode() {
            return this._hashCode;
        }

        public void resetTyped(Class<?> cls) {
            this._type = null;
            this._class = cls;
            this._isTyped = true;
            this._hashCode = hash(cls, true);
        }

        public void resetUntyped(Class<?> cls) {
            this._type = null;
            this._class = cls;
            this._isTyped = false;
            this._hashCode = hash(cls, false);
        }

        private static final int hash(JavaType javaType, boolean z6) {
            int iHashCode = javaType.hashCode();
            return z6 ? iHashCode - 2 : iHashCode - 1;
        }

        public void resetTyped(JavaType javaType) {
            this._type = javaType;
            this._class = null;
            this._isTyped = true;
            this._hashCode = hash(javaType, true);
        }

        public void resetUntyped(JavaType javaType) {
            this._type = javaType;
            this._class = null;
            this._isTyped = false;
            this._hashCode = hash(javaType, false);
        }

        public final String toString() {
            if (this._class != null) {
                return "{class: " + this._class.getName() + ", typed? " + this._isTyped + "}";
            }
            return "{type: " + this._type + ", typed? " + this._isTyped + "}";
        }

        public TypeKey(JavaType javaType, boolean z6) {
            this._type = javaType;
            this._class = null;
            this._isTyped = z6;
            this._hashCode = hash(javaType, z6);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addAndResolveNonTypedSerializer(Class<?> cls, JsonSerializer<Object> jsonSerializer, SerializerProvider serializerProvider) throws JsonMappingException {
        synchronized (this) {
            try {
                if (this._sharedMap.put(new TypeKey(cls, false), jsonSerializer) == null) {
                    this._readOnlyMap = null;
                }
                if (jsonSerializer instanceof ResolvableSerializer) {
                    ((ResolvableSerializer) jsonSerializer).resolve(serializerProvider);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void addTypedSerializer(JavaType javaType, JsonSerializer<Object> jsonSerializer) {
        synchronized (this) {
            try {
                if (this._sharedMap.put(new TypeKey(javaType, true), jsonSerializer) == null) {
                    this._readOnlyMap = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void flush() {
        this._sharedMap.clear();
    }

    public synchronized int size() {
        return this._sharedMap.size();
    }

    public JsonSerializer<Object> typedValueSerializer(JavaType javaType) {
        JsonSerializer<Object> jsonSerializer;
        synchronized (this) {
            jsonSerializer = this._sharedMap.get(new TypeKey(javaType, true));
        }
        return jsonSerializer;
    }

    public JsonSerializer<Object> untypedValueSerializer(Class<?> cls) {
        JsonSerializer<Object> jsonSerializer;
        synchronized (this) {
            jsonSerializer = this._sharedMap.get(new TypeKey(cls, false));
        }
        return jsonSerializer;
    }

    public ReadOnlyClassToSerializerMap getReadOnlyLookupMap() {
        ReadOnlyClassToSerializerMap readOnlyClassToSerializerMapFrom = this._readOnlyMap;
        if (readOnlyClassToSerializerMapFrom == null) {
            synchronized (this) {
                try {
                    readOnlyClassToSerializerMapFrom = this._readOnlyMap;
                    if (readOnlyClassToSerializerMapFrom == null) {
                        readOnlyClassToSerializerMapFrom = ReadOnlyClassToSerializerMap.from(this._sharedMap);
                        this._readOnlyMap = readOnlyClassToSerializerMapFrom;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return readOnlyClassToSerializerMapFrom.instance();
    }

    public void addTypedSerializer(Class<?> cls, JsonSerializer<Object> jsonSerializer) {
        synchronized (this) {
            try {
                if (this._sharedMap.put(new TypeKey(cls, true), jsonSerializer) == null) {
                    this._readOnlyMap = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public JsonSerializer<Object> typedValueSerializer(Class<?> cls) {
        JsonSerializer<Object> jsonSerializer;
        synchronized (this) {
            jsonSerializer = this._sharedMap.get(new TypeKey(cls, true));
        }
        return jsonSerializer;
    }

    public JsonSerializer<Object> untypedValueSerializer(JavaType javaType) {
        JsonSerializer<Object> jsonSerializer;
        synchronized (this) {
            jsonSerializer = this._sharedMap.get(new TypeKey(javaType, false));
        }
        return jsonSerializer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addAndResolveNonTypedSerializer(JavaType javaType, JsonSerializer<Object> jsonSerializer, SerializerProvider serializerProvider) throws JsonMappingException {
        synchronized (this) {
            try {
                if (this._sharedMap.put(new TypeKey(javaType, false), jsonSerializer) == null) {
                    this._readOnlyMap = null;
                }
                if (jsonSerializer instanceof ResolvableSerializer) {
                    ((ResolvableSerializer) jsonSerializer).resolve(serializerProvider);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
