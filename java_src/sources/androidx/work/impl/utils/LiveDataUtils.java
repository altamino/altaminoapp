package androidx.work.impl.utils;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Observer;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public class LiveDataUtils {

    /* JADX INFO: renamed from: androidx.work.impl.utils.LiveDataUtils$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    class AnonymousClass1 implements Observer<Object> {
        Object mCurrentOutput;
        final /* synthetic */ Object val$lock;
        final /* synthetic */ Function val$mappingMethod;
        final /* synthetic */ MediatorLiveData val$outputLiveData;
        final /* synthetic */ TaskExecutor val$workTaskExecutor;

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable final Object input) {
            this.val$workTaskExecutor.a(new Runnable() { // from class: androidx.work.impl.utils.LiveDataUtils.1.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (AnonymousClass1.this.val$lock) {
                        try {
                            Object objApply = AnonymousClass1.this.val$mappingMethod.apply(input);
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            Object obj = anonymousClass1.mCurrentOutput;
                            if (obj == null && objApply != null) {
                                anonymousClass1.mCurrentOutput = objApply;
                                anonymousClass1.val$outputLiveData.m(objApply);
                            } else if (obj != null && !obj.equals(objApply)) {
                                AnonymousClass1 anonymousClass2 = AnonymousClass1.this;
                                anonymousClass2.mCurrentOutput = objApply;
                                anonymousClass2.val$outputLiveData.m(objApply);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            });
        }
    }

    private LiveDataUtils() {
    }
}
