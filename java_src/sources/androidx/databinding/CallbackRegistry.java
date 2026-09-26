package androidx.databinding;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CallbackRegistry<C, T, A> implements Cloneable {
    private static final String TAG = "CallbackRegistry";
    private List<C> mCallbacks = new ArrayList();
    private long mFirst64Removed = 0;
    private int mNotificationLevel;
    private final NotifierCallback<C, T, A> mNotifier;
    private long[] mRemainderRemoved;

    public static abstract class NotifierCallback<C, T, A> {
        public abstract void a(C callback, T sender, int arg, A arg2);
    }

    public synchronized void b(C callback) {
        try {
            if (callback == null) {
                throw new IllegalArgumentException("callback cannot be null");
            }
            int iLastIndexOf = this.mCallbacks.lastIndexOf(callback);
            if (iLastIndexOf < 0 || d(iLastIndexOf)) {
                this.mCallbacks.add(callback);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public synchronized CallbackRegistry<C, T, A> clone() {
        CallbackRegistry<C, T, A> callbackRegistry;
        CloneNotSupportedException e;
        try {
            callbackRegistry = (CallbackRegistry) super.clone();
            try {
                callbackRegistry.mFirst64Removed = 0L;
                callbackRegistry.mRemainderRemoved = null;
                callbackRegistry.mNotificationLevel = 0;
                callbackRegistry.mCallbacks = new ArrayList();
                int size = this.mCallbacks.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (!d(i10)) {
                        callbackRegistry.mCallbacks.add(this.mCallbacks.get(i10));
                    }
                }
            } catch (CloneNotSupportedException e2) {
                e = e2;
                e.printStackTrace();
            }
        } catch (CloneNotSupportedException e6) {
            callbackRegistry = null;
            e = e6;
        }
        return callbackRegistry;
    }

    public synchronized void e(T sender, int arg, A arg2) {
        try {
            this.mNotificationLevel++;
            h(sender, arg, arg2);
            int i10 = this.mNotificationLevel - 1;
            this.mNotificationLevel = i10;
            if (i10 == 0) {
                long[] jArr = this.mRemainderRemoved;
                if (jArr != null) {
                    for (int length = jArr.length - 1; length >= 0; length--) {
                        long j6 = this.mRemainderRemoved[length];
                        if (j6 != 0) {
                            k((length + 1) * 64, j6);
                            this.mRemainderRemoved[length] = 0;
                        }
                    }
                }
                long j10 = this.mFirst64Removed;
                if (j10 != 0) {
                    k(0, j10);
                    this.mFirst64Removed = 0L;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void j(C callback) {
        try {
            if (this.mNotificationLevel == 0) {
                this.mCallbacks.remove(callback);
            } else {
                int iLastIndexOf = this.mCallbacks.lastIndexOf(callback);
                if (iLastIndexOf >= 0) {
                    l(iLastIndexOf);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private boolean d(int index) {
        int i10;
        if (index < 64) {
            return ((1 << index) & this.mFirst64Removed) != 0;
        }
        long[] jArr = this.mRemainderRemoved;
        if (jArr != null && (i10 = (index / 64) - 1) < jArr.length) {
            return ((1 << (index % 64)) & jArr[i10]) != 0;
        }
        return false;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void f(T t5, int i10, A a7, int i11, int i12, long j6) {
        long j10 = 1;
        while (i11 < i12) {
            if ((j6 & j10) == 0) {
                this.mNotifier.a(this.mCallbacks.get(i11), t5, i10, a7);
            }
            j10 <<= 1;
            i11++;
        }
    }

    private void g(T sender, int arg, A arg2) {
        f(sender, arg, arg2, 0, Math.min(64, this.mCallbacks.size()), this.mFirst64Removed);
    }

    private void h(T sender, int arg, A arg2) {
        int size = this.mCallbacks.size();
        long[] jArr = this.mRemainderRemoved;
        int length = jArr == null ? -1 : jArr.length - 1;
        i(sender, arg, arg2, length);
        f(sender, arg, arg2, (length + 2) * 64, size, 0L);
    }

    private void i(T sender, int arg, A arg2, int remainderIndex) {
        if (remainderIndex < 0) {
            g(sender, arg, arg2);
            return;
        }
        long j6 = this.mRemainderRemoved[remainderIndex];
        int i10 = (remainderIndex + 1) * 64;
        int iMin = Math.min(this.mCallbacks.size(), i10 + 64);
        i(sender, arg, arg2, remainderIndex - 1);
        f(sender, arg, arg2, i10, iMin, j6);
    }

    private void k(int startIndex, long removed) {
        long j6 = Long.MIN_VALUE;
        for (int i10 = startIndex + 63; i10 >= startIndex; i10--) {
            if ((removed & j6) != 0) {
                this.mCallbacks.remove(i10);
            }
            j6 >>>= 1;
        }
    }

    private void l(int index) {
        if (index < 64) {
            this.mFirst64Removed = (1 << index) | this.mFirst64Removed;
            return;
        }
        int i10 = (index / 64) - 1;
        long[] jArr = this.mRemainderRemoved;
        if (jArr == null) {
            this.mRemainderRemoved = new long[this.mCallbacks.size() / 64];
        } else if (jArr.length <= i10) {
            long[] jArr2 = new long[this.mCallbacks.size() / 64];
            long[] jArr3 = this.mRemainderRemoved;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.mRemainderRemoved = jArr2;
        }
        long j6 = 1 << (index % 64);
        long[] jArr4 = this.mRemainderRemoved;
        jArr4[i10] = j6 | jArr4[i10];
    }

    public CallbackRegistry(NotifierCallback<C, T, A> notifier) {
        this.mNotifier = notifier;
    }
}
