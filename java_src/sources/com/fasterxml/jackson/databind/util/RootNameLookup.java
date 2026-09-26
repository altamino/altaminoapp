package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.ClassKey;
import java.io.Serializable;

/* JADX INFO: loaded from: classes11.dex */
public class RootNameLookup implements Serializable {
    private static final long serialVersionUID = 1;
    protected transient LRUMap<ClassKey, SerializedString> _rootNames;

    public SerializedString findRootName(JavaType javaType, MapperConfig<?> mapperConfig) {
        return findRootName(javaType.getRawClass(), mapperConfig);
    }

    public SerializedString findRootName(Class<?> cls, MapperConfig<?> mapperConfig) {
        ClassKey classKey = new ClassKey(cls);
        synchronized (this) {
            try {
                LRUMap<ClassKey, SerializedString> lRUMap = this._rootNames;
                if (lRUMap == null) {
                    this._rootNames = new LRUMap<>(20, 200);
                } else {
                    SerializedString serializedString = lRUMap.get(classKey);
                    if (serializedString != null) {
                        return serializedString;
                    }
                }
                PropertyName propertyNameFindRootName = mapperConfig.getAnnotationIntrospector().findRootName(mapperConfig.introspectClassAnnotations(cls).getClassInfo());
                SerializedString serializedString2 = new SerializedString((propertyNameFindRootName == null || !propertyNameFindRootName.hasSimpleName()) ? cls.getSimpleName() : propertyNameFindRootName.getSimpleName());
                synchronized (this) {
                    this._rootNames.put(classKey, serializedString2);
                }
                return serializedString2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
