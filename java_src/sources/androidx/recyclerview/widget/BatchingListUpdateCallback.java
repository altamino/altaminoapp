package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes11.dex */
public class BatchingListUpdateCallback implements ListUpdateCallback {
    private static final int TYPE_ADD = 1;
    private static final int TYPE_CHANGE = 3;
    private static final int TYPE_NONE = 0;
    private static final int TYPE_REMOVE = 2;
    final ListUpdateCallback mWrapped;
    int mLastEventType = 0;
    int mLastEventPosition = -1;
    int mLastEventCount = -1;
    Object mLastEventPayload = null;

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    @SuppressLint({"UnknownNullness"})
    public void a(int i10, int i11, Object obj) {
        int i12;
        if (this.mLastEventType == 3) {
            int i13 = this.mLastEventPosition;
            int i14 = this.mLastEventCount;
            if (i10 <= i13 + i14 && (i12 = i10 + i11) >= i13 && this.mLastEventPayload == obj) {
                this.mLastEventPosition = Math.min(i10, i13);
                this.mLastEventCount = Math.max(i14 + i13, i12) - this.mLastEventPosition;
                return;
            }
        }
        e();
        this.mLastEventPosition = i10;
        this.mLastEventCount = i11;
        this.mLastEventPayload = obj;
        this.mLastEventType = 3;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void b(int i10, int i11) {
        int i12;
        if (this.mLastEventType == 1 && i10 >= (i12 = this.mLastEventPosition)) {
            int i13 = this.mLastEventCount;
            if (i10 <= i12 + i13) {
                this.mLastEventCount = i13 + i11;
                this.mLastEventPosition = Math.min(i10, i12);
                return;
            }
        }
        e();
        this.mLastEventPosition = i10;
        this.mLastEventCount = i11;
        this.mLastEventType = 1;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void c(int i10, int i11) {
        int i12;
        if (this.mLastEventType == 2 && (i12 = this.mLastEventPosition) >= i10 && i12 <= i10 + i11) {
            this.mLastEventCount += i11;
            this.mLastEventPosition = i10;
        } else {
            e();
            this.mLastEventPosition = i10;
            this.mLastEventCount = i11;
            this.mLastEventType = 2;
        }
    }

    public void e() {
        int i10 = this.mLastEventType;
        if (i10 == 0) {
            return;
        }
        if (i10 == 1) {
            this.mWrapped.b(this.mLastEventPosition, this.mLastEventCount);
        } else if (i10 == 2) {
            this.mWrapped.c(this.mLastEventPosition, this.mLastEventCount);
        } else if (i10 == 3) {
            this.mWrapped.a(this.mLastEventPosition, this.mLastEventCount, this.mLastEventPayload);
        }
        this.mLastEventPayload = null;
        this.mLastEventType = 0;
    }

    public BatchingListUpdateCallback(@NonNull ListUpdateCallback listUpdateCallback) {
        this.mWrapped = listUpdateCallback;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void d(int i10, int i11) {
        e();
        this.mWrapped.d(i10, i11);
    }
}
