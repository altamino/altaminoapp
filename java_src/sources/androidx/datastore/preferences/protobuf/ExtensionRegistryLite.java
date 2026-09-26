package androidx.datastore.preferences.protobuf;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class ExtensionRegistryLite {
    static final String EXTENSION_CLASS_NAME = "androidx.datastore.preferences.protobuf.Extension";
    private static boolean doFullRuntimeInheritanceCheck = true;
    private static volatile boolean eagerlyParseMessageSets;
    private static volatile ExtensionRegistryLite emptyRegistry;
    private final Map<ObjectIntPair, GeneratedMessageLite.GeneratedExtension<?, ?>> extensionsByNumber;
    private static final Class<?> extensionClass = c();
    static final ExtensionRegistryLite EMPTY_REGISTRY_LITE = new ExtensionRegistryLite(true);

    private static final class ObjectIntPair {
        private final int number;
        private final Object object;

        public boolean equals(Object obj) {
            if (!(obj instanceof ObjectIntPair)) {
                return false;
            }
            ObjectIntPair objectIntPair = (ObjectIntPair) obj;
            return this.object == objectIntPair.object && this.number == objectIntPair.number;
        }

        public int hashCode() {
            return (System.identityHashCode(this.object) * 65535) + this.number;
        }

        ObjectIntPair(Object obj, int i10) {
            this.object = obj;
            this.number = i10;
        }
    }

    ExtensionRegistryLite() {
        this.extensionsByNumber = new HashMap();
    }

    public static ExtensionRegistryLite b() {
        ExtensionRegistryLite extensionRegistryLiteA = emptyRegistry;
        if (extensionRegistryLiteA == null) {
            synchronized (ExtensionRegistryLite.class) {
                try {
                    extensionRegistryLiteA = emptyRegistry;
                    if (extensionRegistryLiteA == null) {
                        extensionRegistryLiteA = doFullRuntimeInheritanceCheck ? ExtensionRegistryFactory.a() : EMPTY_REGISTRY_LITE;
                        emptyRegistry = extensionRegistryLiteA;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return extensionRegistryLiteA;
    }

    static Class<?> c() {
        try {
            return Class.forName(EXTENSION_CLASS_NAME);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public <ContainingType extends MessageLite> GeneratedMessageLite.GeneratedExtension<ContainingType, ?> a(ContainingType containingtype, int i10) {
        return (GeneratedMessageLite.GeneratedExtension) this.extensionsByNumber.get(new ObjectIntPair(containingtype, i10));
    }

    ExtensionRegistryLite(boolean z6) {
        this.extensionsByNumber = Collections.emptyMap();
    }
}
