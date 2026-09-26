package kotlinx.coroutines.channels;

import kotlinx.coroutines.internal.j0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public interface d<E> extends u<E>, t<E> {
    public static final int BUFFERED = -2;
    public static final int CONFLATED = -1;

    @NotNull
    public static final String DEFAULT_BUFFER_PROPERTY_NAME = "kotlinx.coroutines.channels.defaultBuffer";

    @NotNull
    public static final a Factory = a.$$INSTANCE;
    public static final int OPTIONAL_CHANNEL = -3;
    public static final int RENDEZVOUS = 0;
    public static final int UNLIMITED = Integer.MAX_VALUE;

    public static final class a {
        public static final int BUFFERED = -2;
        public static final int CONFLATED = -1;

        @NotNull
        public static final String DEFAULT_BUFFER_PROPERTY_NAME = "kotlinx.coroutines.channels.defaultBuffer";
        public static final int OPTIONAL_CHANNEL = -3;
        public static final int RENDEZVOUS = 0;
        public static final int UNLIMITED = Integer.MAX_VALUE;
        static final /* synthetic */ a $$INSTANCE = new a();
        private static final int CHANNEL_DEFAULT_CAPACITY = j0.b("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);

        public final int a() {
            return CHANNEL_DEFAULT_CAPACITY;
        }

        private a() {
        }
    }
}
