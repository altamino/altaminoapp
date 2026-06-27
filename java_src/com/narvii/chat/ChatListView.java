package com.narvii.chat;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListAdapter;
import com.narvii.util.Log;
import com.narvii.widget.NVListView;
import java.lang.reflect.Field;

/* loaded from: classes2.dex */
public class ChatListView extends NVListView {
    boolean fInited;
    Field fLayoutMode;
    Field fNextSelectedPosition;
    Field fSpecificTop;
    Field fSyncPosition;
    boolean isRevertedSwipeRefreshEnabled;

    public ChatListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setStackFromBottom(true);
        setTranscriptMode(1);
        try {
            this.fLayoutMode = searchField(getClass(), "mLayoutMode");
            this.fLayoutMode.setAccessible(true);
            this.fSyncPosition = searchField(getClass(), "mSyncPosition");
            this.fSyncPosition.setAccessible(true);
            this.fSpecificTop = searchField(getClass(), "mSpecificTop");
            this.fSpecificTop.setAccessible(true);
            this.fNextSelectedPosition = searchField(getClass(), "mNextSelectedPosition");
            this.fNextSelectedPosition.setAccessible(true);
            this.fInited = true;
        } catch (Exception e) {
            Log.w("fail to hack ChatListView", e);
        }
    }

    public void setRevertedSwipeRefreshEnabled(boolean z) {
        this.isRevertedSwipeRefreshEnabled = z;
    }

    @Override // com.narvii.widget.NVListView, android.view.View
    public boolean startNestedScroll(int i) {
        return !this.isRevertedSwipeRefreshEnabled && super.startNestedScroll(i);
    }

    @Override // android.widget.AdapterView
    public Object getItemAtPosition(int i) {
        ListAdapter adapter = getAdapter();
        int count = adapter == null ? 0 : adapter.getCount();
        if (i < 0 || i >= count) {
            return null;
        }
        return super.getItemAtPosition(i);
    }

    @Override // android.widget.AdapterView
    public long getItemIdAtPosition(int i) {
        ListAdapter adapter = getAdapter();
        int count = adapter == null ? 0 : adapter.getCount();
        if (i < 0 || i >= count) {
            return Long.MIN_VALUE;
        }
        return super.getItemIdAtPosition(i);
    }

    @Override // android.widget.ListView, android.widget.AbsListView
    protected void layoutChildren() throws IllegalAccessException, IllegalArgumentException {
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

    private static Field searchField(Class<?> cls, String str) throws NoSuchFieldException {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Class<? super Object> superclass = cls.getSuperclass();
            if (superclass == null) {
                throw new NoSuchFieldException(str);
            }
            return searchField(superclass, str);
        }
    }
}
