package com.narvii.leaderboard;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.widget.NVListView;

/* loaded from: classes.dex */
public class LeaderBoardOverLayout extends OverlayLayout {
    NVListView listView;

    public LeaderBoardOverLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.narvii.list.overlay.OverlayLayout
    public void attach(NVListView nVListView) {
        super.attach(nVListView);
        this.listView = nVListView;
    }

    public NVListView getListView() {
        return this.listView;
    }

    public void removeAttach(NVListView nVListView) {
        if (nVListView == null) {
            return;
        }
        nVListView.removeOnScrollListener(this);
        nVListView.removeOnOverscrollListener(this);
        nVListView.setOnLayoutListener(null);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.height1 = this.height1;
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.height1 = savedState.height1;
        requestLayout();
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.narvii.leaderboard.LeaderBoardOverLayout.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int height1;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.height1 = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.height1);
        }
    }
}
