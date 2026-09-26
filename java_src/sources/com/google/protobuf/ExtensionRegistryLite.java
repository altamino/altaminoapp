package com.google.protobuf;

import com.narvii.notification.Notification;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
public class ExtensionRegistryLite {
    static final ExtensionRegistryLite EMPTY_REGISTRY_LITE = new ExtensionRegistryLite(true);
    static final String EXTENSION_CLASS_NAME = "com.google.protobuf.Extension";
    private static boolean doFullRuntimeInheritanceCheck = true;
    private static volatile boolean eagerlyParseMessageSets;
    private static volatile ExtensionRegistryLite emptyRegistry;
    private final Map<b, GeneratedMessageLite.GeneratedExtension<?, ?>> extensionsByNumber;

    private static class a {
        static final Class<?> INSTANCE = resolveExtensionClass();

        static Class<?> resolveExtensionClass() {
            try {
                return Class.forName(ExtensionRegistryLite.EXTENSION_CLASS_NAME);
            } catch (ClassNotFoundException unused) {
                return null;
            }
        }

        private a() {
        }
    }

    private static final class b {
        private final int number;
        private final Object object;

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.object == bVar.object && this.number == bVar.number;
        }

        public int hashCode() {
            return (System.identityHashCode(this.object) * 65535) + this.number;
        }

        b(Object obj, int i10) {
            this.object = obj;
            this.number = i10;
        }
    }

    ExtensionRegistryLite() {
        this.extensionsByNumber = new HashMap();
    }

    public static boolean isEagerlyParseMessageSets() {
        return eagerlyParseMessageSets;
    }

    public static void setEagerlyParseMessageSets(boolean z6) {
        eagerlyParseMessageSets = z6;
    }

    public final void add(GeneratedMessageLite.GeneratedExtension<?, ?> generatedExtension) {
        this.extensionsByNumber.put(new b(generatedExtension.getContainingTypeDefaultInstance(), generatedExtension.getNumber()), generatedExtension);
    }

    public static ExtensionRegistryLite getEmptyRegistry() {
        ExtensionRegistryLite extensionRegistryLiteCreateEmpty = emptyRegistry;
        if (extensionRegistryLiteCreateEmpty == null) {
            synchronized (ExtensionRegistryLite.class) {
                try {
                    extensionRegistryLiteCreateEmpty = emptyRegistry;
                    if (extensionRegistryLiteCreateEmpty == null) {
                        extensionRegistryLiteCreateEmpty = doFullRuntimeInheritanceCheck ? i.createEmpty() : EMPTY_REGISTRY_LITE;
                        emptyRegistry = extensionRegistryLiteCreateEmpty;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return extensionRegistryLiteCreateEmpty;
    }

    public static ExtensionRegistryLite newInstance() {
        return doFullRuntimeInheritanceCheck ? i.create() : new ExtensionRegistryLite();
    }

    public <ContainingType extends MessageLite> GeneratedMessageLite.GeneratedExtension<ContainingType, ?> findLiteExtensionByNumber(ContainingType containingtype, int i10) {
        return (GeneratedMessageLite.GeneratedExtension) this.extensionsByNumber.get(new b(containingtype, i10));
    }

    public ExtensionRegistryLite getUnmodifiable() {
        return new ExtensionRegistryLite(this);
    }

    ExtensionRegistryLite(ExtensionRegistryLite extensionRegistryLite) {
        if (extensionRegistryLite == EMPTY_REGISTRY_LITE) {
            this.extensionsByNumber = Collections.emptyMap();
        } else {
            this.extensionsByNumber = Collections.unmodifiableMap(extensionRegistryLite.extensionsByNumber);
        }
    }

    public final void add(ExtensionLite<?, ?> extensionLite) {
        if (GeneratedMessageLite.GeneratedExtension.class.isAssignableFrom(extensionLite.getClass())) {
            add((GeneratedMessageLite.GeneratedExtension<?, ?>) extensionLite);
        }
        if (doFullRuntimeInheritanceCheck && i.isFullRegistry(this)) {
            try {
                getClass().getMethod(Notification.ACTION_ADD, a.INSTANCE).invoke(this, extensionLite);
            } catch (Exception e) {
                throw new IllegalArgumentException(String.format("Could not invoke ExtensionRegistry#add for %s", extensionLite), e);
            }
        }
    }

    ExtensionRegistryLite(boolean z6) {
        this.extensionsByNumber = Collections.emptyMap();
    }
}
