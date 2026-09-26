package com.narvii.chat;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListAdapter;
import com.narvii.util.Log;
import com.narvii.widget.NVListView;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes9.dex */
public class ChatListView extends NVListView {
    boolean fInited;
    Field fLayoutMode;
    Field fNextSelectedPosition;
    Field fSpecificTop;
    Field fSyncPosition;
    boolean isRevertedSwipeRefreshEnabled;

    public void setRevertedSwipeRefreshEnabled(boolean z6) {
        this.isRevertedSwipeRefreshEnabled = z6;
    }

    @Override // android.widget.ListView, android.widget.AbsListView
    protected void layoutChildren() {
        if (this.fInited) {
            try {
                if (((Integer) this.fLayoutMode.get(this)).intValue() == 0) {
                    int lastVisiblePosition = getLastVisiblePosition();
                    int top = getChildCount() > 0 ? getChildAt(getChildCount() - 1).getTop() : 0;
                    this.fLayoutMode.set(this, 5);
                    this.fSyncPosition.set(this, Integer.valueOf(lastVisiblePosition));
                    this.fSpecificTop.set(this, Integer.valueOf(top));
                }
                if (((Integer) this.fLayoutMode.get(this)).intValue() == 5) {
                    this.fNextSelectedPosition.set(this, -1);
                }
            } catch (Exception unused) {
            }
        }
        super.layoutChildren();
    }

    @Override // com.narvii.widget.NVListView, android.view.View
    public boolean startNestedScroll(int i10) {
        return !this.isRevertedSwipeRefreshEnabled && super.startNestedScroll(i10);
    }

    public ChatListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setStackFromBottom(true);
        setTranscriptMode(1);
        try {
            Field fieldSearchField = searchField(getClass(), "mLayoutMode");
            this.fLayoutMode = fieldSearchField;
            fieldSearchField.setAccessible(true);
            Field fieldSearchField2 = searchField(getClass(), "mSyncPosition");
            this.fSyncPosition = fieldSearchField2;
            fieldSearchField2.setAccessible(true);
            Field fieldSearchField3 = searchField(getClass(), "mSpecificTop");
            this.fSpecificTop = fieldSearchField3;
            fieldSearchField3.setAccessible(true);
            Field fieldSearchField4 = searchField(getClass(), "mNextSelectedPosition");
            this.fNextSelectedPosition = fieldSearchField4;
            fieldSearchField4.setAccessible(true);
            this.fInited = true;
        } catch (Exception e) {
            Log.w("fail to hack ChatListView", e);
        }
    }

    private static Field searchField(Class<?> cls, String str) throws NoSuchFieldException {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Class<? super Object> superclass = cls.getSuperclass();
            if (superclass != null) {
                return searchField(superclass, str);
            }
            throw new NoSuchFieldException(str);
        }
    }

    @Override // android.widget.AdapterView
    public Object getItemAtPosition(int i10) {
        int count;
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            count = 0;
        } else {
            count = adapter.getCount();
        }
        if (i10 >= 0 && i10 < count) {
            return super.getItemAtPosition(i10);
        }
        return null;
    }

    @Override // android.widget.AdapterView
    public long getItemIdAtPosition(int i10) {
        int count;
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            count = 0;
        } else {
            count = adapter.getCount();
        }
        if (i10 >= 0 && i10 < count) {
            return super.getItemIdAtPosition(i10);
        }
        return Long.MIN_VALUE;
    }
}
