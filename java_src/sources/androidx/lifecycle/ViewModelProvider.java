package androidx.lifecycle;

import android.app.Application;
import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class ViewModelProvider {

    @NotNull
    private final CreationExtras defaultCreationExtras;

    @NotNull
    private final Factory factory;

    @NotNull
    private final ViewModelStore store;

    public static class AndroidViewModelFactory extends NewInstanceFactory {

        @NotNull
        public static final String DEFAULT_KEY = "androidx.lifecycle.ViewModelProvider.DefaultKey";

        @Nullable
        private static AndroidViewModelFactory sInstance;

        @Nullable
        private final Application application;

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        public static final CreationExtras.Key<Application> APPLICATION_KEY = Companion.ApplicationKeyImpl.INSTANCE;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private static final class ApplicationKeyImpl implements CreationExtras.Key<Application> {

                @NotNull
                public static final ApplicationKeyImpl INSTANCE = new ApplicationKeyImpl();

                private ApplicationKeyImpl() {
                }
            }

            private Companion() {
            }

            @NotNull
            public final Factory a(@NotNull ViewModelStoreOwner owner) {
                t.j(owner, "owner");
                return owner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) owner).getDefaultViewModelProviderFactory() : NewInstanceFactory.Companion.a();
            }

            @NotNull
            public final AndroidViewModelFactory b(@NotNull Application application) {
                t.j(application, "application");
                if (AndroidViewModelFactory.sInstance == null) {
                    AndroidViewModelFactory.sInstance = new AndroidViewModelFactory(application);
                }
                AndroidViewModelFactory androidViewModelFactory = AndroidViewModelFactory.sInstance;
                t.g(androidViewModelFactory);
                return androidViewModelFactory;
            }
        }

        private AndroidViewModelFactory(Application application, int i10) {
            this.application = application;
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        @NotNull
        public <T extends ViewModel> T create(@NotNull Class<T> modelClass, @NotNull CreationExtras extras) {
            t.j(modelClass, "modelClass");
            t.j(extras, "extras");
            if (this.application != null) {
                return (T) create(modelClass);
            }
            Application application = (Application) extras.a(APPLICATION_KEY);
            if (application != null) {
                return (T) e(modelClass, application);
            }
            if (AndroidViewModel.class.isAssignableFrom(modelClass)) {
                throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
            }
            return (T) super.create(modelClass);
        }

        public AndroidViewModelFactory() {
            this(null, 0);
        }

        private final <T extends ViewModel> T e(Class<T> cls, Application application) {
            if (!AndroidViewModel.class.isAssignableFrom(cls)) {
                return (T) super.create(cls);
            }
            try {
                T tNewInstance = cls.getConstructor(Application.class).newInstance(application);
                t.i(tNewInstance, "{\n                try {\n…          }\n            }");
                return tNewInstance;
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            } catch (NoSuchMethodException e6) {
                throw new RuntimeException("Cannot create an instance of " + cls, e6);
            } catch (InvocationTargetException e7) {
                throw new RuntimeException("Cannot create an instance of " + cls, e7);
            }
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public AndroidViewModelFactory(@NotNull Application application) {
            this(application, 0);
            t.j(application, "application");
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        @NotNull
        public <T extends ViewModel> T create(@NotNull Class<T> modelClass) {
            t.j(modelClass, "modelClass");
            Application application = this.application;
            if (application != null) {
                return (T) e(modelClass, application);
            }
            throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        }
    }

    public interface Factory {

        @NotNull
        public static final Companion Companion = Companion.$$INSTANCE;

        @NotNull
        <T extends ViewModel> T create(@NotNull Class<T> cls);

        @NotNull
        <T extends ViewModel> T create(@NotNull Class<T> cls, @NotNull CreationExtras creationExtras);

        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }
        }
    }

    public static class NewInstanceFactory implements Factory {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        public static final CreationExtras.Key<String> VIEW_MODEL_KEY = Companion.ViewModelKeyImpl.INSTANCE;

        @Nullable
        private static NewInstanceFactory sInstance;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private static final class ViewModelKeyImpl implements CreationExtras.Key<String> {

                @NotNull
                public static final ViewModelKeyImpl INSTANCE = new ViewModelKeyImpl();

                private ViewModelKeyImpl() {
                }
            }

            private Companion() {
            }

            @RestrictTo
            @NotNull
            public final NewInstanceFactory a() {
                if (NewInstanceFactory.sInstance == null) {
                    NewInstanceFactory.sInstance = new NewInstanceFactory();
                }
                NewInstanceFactory newInstanceFactory = NewInstanceFactory.sInstance;
                t.g(newInstanceFactory);
                return newInstanceFactory;
            }
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public /* synthetic */ ViewModel create(Class cls, CreationExtras creationExtras) {
            return j.b(this, cls, creationExtras);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NotNull
        public <T extends ViewModel> T create(@NotNull Class<T> modelClass) throws InvocationTargetException {
            t.j(modelClass, "modelClass");
            try {
                T tNewInstance = modelClass.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                t.i(tNewInstance, "{\n                modelC…wInstance()\n            }");
                return tNewInstance;
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + modelClass, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + modelClass, e2);
            } catch (NoSuchMethodException e6) {
                throw new RuntimeException("Cannot create an instance of " + modelClass, e6);
            }
        }
    }

    @RestrictTo
    public static class OnRequeryFactory {
        public void a(@NotNull ViewModel viewModel) {
            t.j(viewModel, "viewModel");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(@NotNull ViewModelStore store, @NotNull Factory factory) {
        this(store, factory, null, 4, null);
        t.j(store, "store");
        t.j(factory, "factory");
    }

    public ViewModelProvider(@NotNull ViewModelStore store, @NotNull Factory factory, @NotNull CreationExtras defaultCreationExtras) {
        t.j(store, "store");
        t.j(factory, "factory");
        t.j(defaultCreationExtras, "defaultCreationExtras");
        this.store = store;
        this.factory = factory;
        this.defaultCreationExtras = defaultCreationExtras;
    }

    @MainThread
    @NotNull
    public <T extends ViewModel> T a(@NotNull Class<T> modelClass) {
        t.j(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return (T) b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, modelClass);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @MainThread
    @NotNull
    public <T extends ViewModel> T b(@NotNull String key, @NotNull Class<T> modelClass) {
        T t5;
        t.j(key, "key");
        t.j(modelClass, "modelClass");
        T t10 = (T) this.store.b(key);
        if (!modelClass.isInstance(t10)) {
            MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.defaultCreationExtras);
            mutableCreationExtras.c(NewInstanceFactory.VIEW_MODEL_KEY, key);
            try {
                t5 = (T) this.factory.create(modelClass, mutableCreationExtras);
            } catch (AbstractMethodError unused) {
                t5 = (T) this.factory.create(modelClass);
            }
            this.store.d(key, t5);
            return t5;
        }
        Object obj = this.factory;
        OnRequeryFactory onRequeryFactory = obj instanceof OnRequeryFactory ? (OnRequeryFactory) obj : null;
        if (onRequeryFactory != null) {
            t.g(t10);
            onRequeryFactory.a(t10);
        }
        t.h(t10, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
        return t10;
    }

    public /* synthetic */ ViewModelProvider(ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras, int i10, k kVar) {
        this(viewModelStore, factory, (i10 & 4) != 0 ? CreationExtras.Empty.INSTANCE : creationExtras);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(@NotNull ViewModelStoreOwner owner) {
        this(owner.getViewModelStore(), AndroidViewModelFactory.Companion.a(owner), ViewModelProviderGetKt.a(owner));
        t.j(owner, "owner");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(@NotNull ViewModelStoreOwner owner, @NotNull Factory factory) {
        this(owner.getViewModelStore(), factory, ViewModelProviderGetKt.a(owner));
        t.j(owner, "owner");
        t.j(factory, "factory");
    }
}
