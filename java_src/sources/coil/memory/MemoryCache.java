package coil.memory;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import coil.util.i;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public interface MemoryCache {

    public static final class Key implements Parcelable {

        @NotNull
        private final Map<String, String> extras;

        @NotNull
        private final String key;

        @NotNull
        private static final b Companion = new b(null);

        @Deprecated
        @NotNull
        public static final Parcelable.Creator<Key> CREATOR = new a();

        public static final class a implements Parcelable.Creator<Key> {
            @Override // android.os.Parcelable.Creator
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Key[] newArray(int i10) {
                return new Key[i10];
            }

            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Key createFromParcel(@NotNull Parcel parcel) {
                String string = parcel.readString();
                t.g(string);
                int i10 = parcel.readInt();
                LinkedHashMap linkedHashMap = new LinkedHashMap(i10);
                for (int i11 = 0; i11 < i10; i11++) {
                    String string2 = parcel.readString();
                    t.g(string2);
                    String string3 = parcel.readString();
                    t.g(string3);
                    linkedHashMap.put(string2, string3);
                }
                return new Key(string, linkedHashMap);
            }
        }

        private static final class b {
            public /* synthetic */ b(k kVar) {
                this();
            }

            private b() {
            }
        }

        public Key(@NotNull String str, @NotNull Map<String, String> map) {
            this.key = str;
            this.extras = map;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @NotNull
        public final Map<String, String> e() {
            return this.extras;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Key) {
                Key key = (Key) obj;
                if (t.e(this.key, key.key) && t.e(this.extras, key.extras)) {
                    return true;
                }
            }
            return false;
        }

        public /* synthetic */ Key(String str, Map map, int i10, k kVar) {
            this(str, (i10 & 2) != 0 ? s0.h() : map);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Key c(Key key, String str, Map map, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = key.key;
            }
            if ((i10 & 2) != 0) {
                map = key.extras;
            }
            return key.a(str, map);
        }

        @NotNull
        public final Key a(@NotNull String str, @NotNull Map<String, String> map) {
            return new Key(str, map);
        }

        public int hashCode() {
            return (this.key.hashCode() * 31) + this.extras.hashCode();
        }

        @NotNull
        public String toString() {
            return "Key(key=" + this.key + ", extras=" + this.extras + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel parcel, int i10) {
            parcel.writeString(this.key);
            parcel.writeInt(this.extras.size());
            for (Map.Entry<String, String> entry : this.extras.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                parcel.writeString(key);
                parcel.writeString(value);
            }
        }
    }

    public static final class a {

        @NotNull
        private final Context context;
        private int maxSizeBytes;
        private double maxSizePercent;
        private boolean strongReferencesEnabled = true;
        private boolean weakReferencesEnabled = true;

        @NotNull
        public final MemoryCache a() {
            g aVar;
            h fVar = this.weakReferencesEnabled ? new f() : new coil.memory.b();
            if (this.strongReferencesEnabled) {
                double d = this.maxSizePercent;
                int iC = d > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE ? i.c(this.context, d) : this.maxSizeBytes;
                aVar = iC > 0 ? new e(iC, fVar) : new coil.memory.a(fVar);
            } else {
                aVar = new coil.memory.a(fVar);
            }
            return new d(aVar, fVar);
        }

        public a(@NotNull Context context) {
            this.context = context;
            this.maxSizePercent = i.e(context);
        }
    }

    public static final class b {

        @NotNull
        private final Bitmap bitmap;

        @NotNull
        private final Map<String, Object> extras;

        public b(@NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map) {
            this.bitmap = bitmap;
            this.extras = map;
        }

        @NotNull
        public final Bitmap a() {
            return this.bitmap;
        }

        @NotNull
        public final Map<String, Object> b() {
            return this.extras;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (t.e(this.bitmap, bVar.bitmap) && t.e(this.extras, bVar.extras)) {
                    return true;
                }
            }
            return false;
        }

        public /* synthetic */ b(Bitmap bitmap, Map map, int i10, k kVar) {
            this(bitmap, (i10 & 2) != 0 ? s0.h() : map);
        }

        public int hashCode() {
            return (this.bitmap.hashCode() * 31) + this.extras.hashCode();
        }

        @NotNull
        public String toString() {
            return "Value(bitmap=" + this.bitmap + ", extras=" + this.extras + ')';
        }
    }

    void a(int i10);

    @Nullable
    b b(@NotNull Key key);

    void c(@NotNull Key key, @NotNull b bVar);
}
