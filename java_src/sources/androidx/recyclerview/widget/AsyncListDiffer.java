package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class AsyncListDiffer<T> {
    private static final Executor sMainThreadExecutor = new MainThreadExecutor();
    final AsyncDifferConfig<T> mConfig;

    @Nullable
    private List<T> mList;
    private final List<ListListener<T>> mListeners;
    Executor mMainThreadExecutor;
    int mMaxScheduledGeneration;

    @NonNull
    private List<T> mReadOnlyList;
    private final ListUpdateCallback mUpdateCallback;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.AsyncListDiffer$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes8.dex */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ AsyncListDiffer this$0;
        final /* synthetic */ Runnable val$commitCallback;
        final /* synthetic */ List val$newList;
        final /* synthetic */ List val$oldList;
        final /* synthetic */ int val$runGeneration;

        @Override // java.lang.Runnable
        public void run() {
            final DiffUtil.DiffResult diffResultB = DiffUtil.b(new DiffUtil.Callback() { // from class: androidx.recyclerview.widget.AsyncListDiffer.1.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean a(int i10, int i11) {
                    Object obj = AnonymousClass1.this.val$oldList.get(i10);
                    Object obj2 = AnonymousClass1.this.val$newList.get(i11);
                    if (obj != null && obj2 != null) {
                        return AnonymousClass1.this.this$0.mConfig.a().a(obj, obj2);
                    }
                    if (obj == null && obj2 == null) {
                        return true;
                    }
                    throw new AssertionError();
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean b(int i10, int i11) {
                    Object obj = AnonymousClass1.this.val$oldList.get(i10);
                    Object obj2 = AnonymousClass1.this.val$newList.get(i11);
                    if (obj == null || obj2 == null) {
                        return obj == null && obj2 == null;
                    }
                    return AnonymousClass1.this.this$0.mConfig.a().b(obj, obj2);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                @Nullable
                public Object c(int i10, int i11) {
                    Object obj = AnonymousClass1.this.val$oldList.get(i10);
                    Object obj2 = AnonymousClass1.this.val$newList.get(i11);
                    if (obj == null || obj2 == null) {
                        throw new AssertionError();
                    }
                    return AnonymousClass1.this.this$0.mConfig.a().c(obj, obj2);
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int d() {
                    return AnonymousClass1.this.val$newList.size();
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int e() {
                    return AnonymousClass1.this.val$oldList.size();
                }
            });
            this.this$0.mMainThreadExecutor.execute(new Runnable() { // from class: androidx.recyclerview.widget.AsyncListDiffer.1.2
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    AsyncListDiffer asyncListDiffer = anonymousClass1.this$0;
                    if (asyncListDiffer.mMaxScheduledGeneration == anonymousClass1.val$runGeneration) {
                        asyncListDiffer.b(anonymousClass1.val$newList, diffResultB, anonymousClass1.val$commitCallback);
                    }
                }
            });
        }
    }

    public interface ListListener<T> {
        void a(@NonNull List<T> list, @NonNull List<T> list2);
    }

    private static class MainThreadExecutor implements Executor {
        final Handler mHandler = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.mHandler.post(runnable);
        }

        MainThreadExecutor() {
        }
    }

    public AsyncListDiffer(@NonNull RecyclerView.Adapter adapter, @NonNull DiffUtil.ItemCallback<T> itemCallback) {
        this(new AdapterListUpdateCallback(adapter), new AsyncDifferConfig.Builder(itemCallback).a());
    }

    @NonNull
    public List<T> a() {
        return this.mReadOnlyList;
    }

    private void c(@NonNull List<T> list, @Nullable Runnable runnable) {
        Iterator<ListListener<T>> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().a(list, this.mReadOnlyList);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    void b(@NonNull List<T> list, @NonNull DiffUtil.DiffResult diffResult, @Nullable Runnable runnable) {
        List<T> list2 = this.mReadOnlyList;
        this.mList = list;
        this.mReadOnlyList = Collections.unmodifiableList(list);
        diffResult.b(this.mUpdateCallback);
        c(list2, runnable);
    }

    public AsyncListDiffer(@NonNull ListUpdateCallback listUpdateCallback, @NonNull AsyncDifferConfig<T> asyncDifferConfig) {
        this.mListeners = new CopyOnWriteArrayList();
        this.mReadOnlyList = Collections.emptyList();
        this.mUpdateCallback = listUpdateCallback;
        this.mConfig = asyncDifferConfig;
        if (asyncDifferConfig.b() != null) {
            this.mMainThreadExecutor = asyncDifferConfig.b();
        } else {
            this.mMainThreadExecutor = sMainThreadExecutor;
        }
    }
}
