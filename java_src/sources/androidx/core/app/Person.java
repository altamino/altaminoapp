package androidx.core.app;

import android.os.Bundle;
import android.os.PersistableBundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: loaded from: classes6.dex */
public class Person {
    private static final String ICON_KEY = "icon";
    private static final String IS_BOT_KEY = "isBot";
    private static final String IS_IMPORTANT_KEY = "isImportant";
    private static final String KEY_KEY = "key";
    private static final String NAME_KEY = "name";
    private static final String URI_KEY = "uri";

    @Nullable
    IconCompat mIcon;
    boolean mIsBot;
    boolean mIsImportant;

    @Nullable
    String mKey;

    @Nullable
    CharSequence mName;

    @Nullable
    String mUri;

    @RequiresApi
    static class Api22Impl {
        @DoNotInline
        static Person a(PersistableBundle persistableBundle) {
            return new Builder().f(persistableBundle.getString("name")).g(persistableBundle.getString(Person.URI_KEY)).e(persistableBundle.getString(Person.KEY_KEY)).b(persistableBundle.getBoolean(Person.IS_BOT_KEY)).d(persistableBundle.getBoolean(Person.IS_IMPORTANT_KEY)).a();
        }

        @DoNotInline
        static PersistableBundle b(Person person) {
            PersistableBundle persistableBundle = new PersistableBundle();
            CharSequence charSequence = person.mName;
            persistableBundle.putString("name", charSequence != null ? charSequence.toString() : null);
            persistableBundle.putString(Person.URI_KEY, person.mUri);
            persistableBundle.putString(Person.KEY_KEY, person.mKey);
            persistableBundle.putBoolean(Person.IS_BOT_KEY, person.mIsBot);
            persistableBundle.putBoolean(Person.IS_IMPORTANT_KEY, person.mIsImportant);
            return persistableBundle;
        }

        private Api22Impl() {
        }
    }

    @RequiresApi
    static class Api28Impl {
        @DoNotInline
        static Person a(android.app.Person person) {
            return new Builder().f(person.getName()).c(person.getIcon() != null ? IconCompat.g(person.getIcon()) : null).g(person.getUri()).e(person.getKey()).b(person.isBot()).d(person.isImportant()).a();
        }

        @DoNotInline
        static android.app.Person b(Person person) {
            return new android.app.Person.Builder().setName(person.f()).setIcon(person.d() != null ? person.d().B() : null).setUri(person.g()).setKey(person.e()).setBot(person.h()).setImportant(person.i()).build();
        }

        private Api28Impl() {
        }
    }

    public static class Builder {

        @Nullable
        IconCompat mIcon;
        boolean mIsBot;
        boolean mIsImportant;

        @Nullable
        String mKey;

        @Nullable
        CharSequence mName;

        @Nullable
        String mUri;

        @NonNull
        public Builder b(boolean z6) {
            this.mIsBot = z6;
            return this;
        }

        @NonNull
        public Builder c(@Nullable IconCompat iconCompat) {
            this.mIcon = iconCompat;
            return this;
        }

        @NonNull
        public Builder d(boolean z6) {
            this.mIsImportant = z6;
            return this;
        }

        @NonNull
        public Builder e(@Nullable String str) {
            this.mKey = str;
            return this;
        }

        @NonNull
        public Builder f(@Nullable CharSequence charSequence) {
            this.mName = charSequence;
            return this;
        }

        @NonNull
        public Builder g(@Nullable String str) {
            this.mUri = str;
            return this;
        }

        @NonNull
        public Person a() {
            return new Person(this);
        }
    }

    @Nullable
    public IconCompat d() {
        return this.mIcon;
    }

    @Nullable
    public String e() {
        return this.mKey;
    }

    @Nullable
    public CharSequence f() {
        return this.mName;
    }

    @Nullable
    public String g() {
        return this.mUri;
    }

    public boolean h() {
        return this.mIsBot;
    }

    public boolean i() {
        return this.mIsImportant;
    }

    @NonNull
    public static Person b(@NonNull Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(ICON_KEY);
        return new Builder().f(bundle.getCharSequence("name")).c(bundle2 != null ? IconCompat.f(bundle2) : null).g(bundle.getString(URI_KEY)).e(bundle.getString(KEY_KEY)).b(bundle.getBoolean(IS_BOT_KEY)).d(bundle.getBoolean(IS_IMPORTANT_KEY)).a();
    }

    @NonNull
    @RestrictTo
    public String j() {
        String str = this.mUri;
        if (str != null) {
            return str;
        }
        if (this.mName == null) {
            return "";
        }
        return "name:" + ((Object) this.mName);
    }

    @NonNull
    public Bundle l() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence("name", this.mName);
        IconCompat iconCompat = this.mIcon;
        bundle.putBundle(ICON_KEY, iconCompat != null ? iconCompat.A() : null);
        bundle.putString(URI_KEY, this.mUri);
        bundle.putString(KEY_KEY, this.mKey);
        bundle.putBoolean(IS_BOT_KEY, this.mIsBot);
        bundle.putBoolean(IS_IMPORTANT_KEY, this.mIsImportant);
        return bundle;
    }

    Person(Builder builder) {
        this.mName = builder.mName;
        this.mIcon = builder.mIcon;
        this.mUri = builder.mUri;
        this.mKey = builder.mKey;
        this.mIsBot = builder.mIsBot;
        this.mIsImportant = builder.mIsImportant;
    }

    @NonNull
    @RequiresApi
    @RestrictTo
    public static Person a(@NonNull android.app.Person person) {
        return Api28Impl.a(person);
    }

    @NonNull
    @RequiresApi
    @RestrictTo
    public static Person c(@NonNull PersistableBundle persistableBundle) {
        return Api22Impl.a(persistableBundle);
    }

    @NonNull
    @RequiresApi
    @RestrictTo
    public android.app.Person k() {
        return Api28Impl.b(this);
    }
}
