package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class SeekBarPreference extends Preference {
    private static final String TAG = "SeekBarPreference";
    boolean mAdjustable;
    private int mMax;
    int mMin;
    SeekBar mSeekBar;
    private final SeekBar.OnSeekBarChangeListener mSeekBarChangeListener;
    private int mSeekBarIncrement;
    private final View.OnKeyListener mSeekBarKeyListener;
    int mSeekBarValue;
    private TextView mSeekBarValueTextView;
    private boolean mShowSeekBarValue;
    boolean mTrackingTouch;
    boolean mUpdatesContinuously;

    public SeekBarPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mSeekBarChangeListener = new SeekBar.OnSeekBarChangeListener() { // from class: androidx.preference.SeekBarPreference.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i12, boolean z6) {
                if (z6) {
                    SeekBarPreference seekBarPreference = SeekBarPreference.this;
                    if (seekBarPreference.mUpdatesContinuously || !seekBarPreference.mTrackingTouch) {
                        seekBarPreference.B0(seekBar);
                        return;
                    }
                }
                SeekBarPreference seekBarPreference2 = SeekBarPreference.this;
                seekBarPreference2.C0(i12 + seekBarPreference2.mMin);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                SeekBarPreference.this.mTrackingTouch = true;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                SeekBarPreference.this.mTrackingTouch = false;
                int progress = seekBar.getProgress();
                SeekBarPreference seekBarPreference = SeekBarPreference.this;
                if (progress + seekBarPreference.mMin != seekBarPreference.mSeekBarValue) {
                    seekBarPreference.B0(seekBar);
                }
            }
        };
        this.mSeekBarKeyListener = new View.OnKeyListener() { // from class: androidx.preference.SeekBarPreference.2
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i12, KeyEvent keyEvent) {
                if (keyEvent.getAction() != 0) {
                    return false;
                }
                SeekBarPreference seekBarPreference = SeekBarPreference.this;
                if ((!seekBarPreference.mAdjustable && (i12 == 21 || i12 == 22)) || i12 == 23 || i12 == 66) {
                    return false;
                }
                SeekBar seekBar = seekBarPreference.mSeekBar;
                if (seekBar == null) {
                    Log.e(SeekBarPreference.TAG, "SeekBar view is null and hence cannot be adjusted.");
                    return false;
                }
                return seekBar.onKeyDown(i12, keyEvent);
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SeekBarPreference, i10, i11);
        this.mMin = typedArrayObtainStyledAttributes.getInt(R.styleable.SeekBarPreference_min, 0);
        y0(typedArrayObtainStyledAttributes.getInt(R.styleable.SeekBarPreference_android_max, 100));
        z0(typedArrayObtainStyledAttributes.getInt(R.styleable.SeekBarPreference_seekBarIncrement, 0));
        this.mAdjustable = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SeekBarPreference_adjustable, true);
        this.mShowSeekBarValue = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SeekBarPreference_showSeekBarValue, false);
        this.mUpdatesContinuously = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SeekBarPreference_updatesContinuously, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    @Nullable
    protected Object R(@NonNull TypedArray typedArray, int i10) {
        return Integer.valueOf(typedArray.getInt(i10, 0));
    }

    private static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.preference.SeekBarPreference.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        int mMax;
        int mMin;
        int mSeekBarValue;

        SavedState(Parcel parcel) {
            super(parcel);
            this.mSeekBarValue = parcel.readInt();
            this.mMin = parcel.readInt();
            this.mMax = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.mSeekBarValue);
            parcel.writeInt(this.mMin);
            parcel.writeInt(this.mMax);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    private void A0(int i10, boolean z6) {
        int i11 = this.mMin;
        if (i10 < i11) {
            i10 = i11;
        }
        int i12 = this.mMax;
        if (i10 > i12) {
            i10 = i12;
        }
        if (i10 != this.mSeekBarValue) {
            this.mSeekBarValue = i10;
            C0(i10);
            a0(i10);
            if (z6) {
                J();
            }
        }
    }

    void B0(@NonNull SeekBar seekBar) {
        int progress = this.mMin + seekBar.getProgress();
        if (progress != this.mSeekBarValue) {
            if (b(Integer.valueOf(progress))) {
                A0(progress, false);
            } else {
                seekBar.setProgress(this.mSeekBarValue - this.mMin);
                C0(this.mSeekBarValue);
            }
        }
    }

    void C0(int i10) {
        TextView textView = this.mSeekBarValueTextView;
        if (textView != null) {
            textView.setText(String.valueOf(i10));
        }
    }

    @Override // androidx.preference.Preference
    protected void V(@Nullable Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.V(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.V(savedState.getSuperState());
        this.mSeekBarValue = savedState.mSeekBarValue;
        this.mMin = savedState.mMin;
        this.mMax = savedState.mMax;
        J();
    }

    public final void y0(int i10) {
        int i11 = this.mMin;
        if (i10 < i11) {
            i10 = i11;
        }
        if (i10 != this.mMax) {
            this.mMax = i10;
            J();
        }
    }

    public final void z0(int i10) {
        if (i10 != this.mSeekBarIncrement) {
            this.mSeekBarIncrement = Math.min(this.mMax - this.mMin, Math.abs(i10));
            J();
        }
    }

    @Override // androidx.preference.Preference
    public void N(@NonNull PreferenceViewHolder preferenceViewHolder) {
        super.N(preferenceViewHolder);
        preferenceViewHolder.itemView.setOnKeyListener(this.mSeekBarKeyListener);
        this.mSeekBar = (SeekBar) preferenceViewHolder.a(R.id.seekbar);
        TextView textView = (TextView) preferenceViewHolder.a(R.id.seekbar_value);
        this.mSeekBarValueTextView = textView;
        if (this.mShowSeekBarValue) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
            this.mSeekBarValueTextView = null;
        }
        SeekBar seekBar = this.mSeekBar;
        if (seekBar == null) {
            Log.e(TAG, "SeekBar view is null in onBindViewHolder.");
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.mSeekBarChangeListener);
        this.mSeekBar.setMax(this.mMax - this.mMin);
        int i10 = this.mSeekBarIncrement;
        if (i10 != 0) {
            this.mSeekBar.setKeyProgressIncrement(i10);
        } else {
            this.mSeekBarIncrement = this.mSeekBar.getKeyProgressIncrement();
        }
        this.mSeekBar.setProgress(this.mSeekBarValue - this.mMin);
        C0(this.mSeekBarValue);
        this.mSeekBar.setEnabled(F());
    }

    @Override // androidx.preference.Preference
    @Nullable
    protected Parcelable W() {
        Parcelable parcelableW = super.W();
        if (G()) {
            return parcelableW;
        }
        SavedState savedState = new SavedState(parcelableW);
        savedState.mSeekBarValue = this.mSeekBarValue;
        savedState.mMin = this.mMin;
        savedState.mMax = this.mMax;
        return savedState;
    }

    public SeekBarPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public SeekBarPreference(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.seekBarPreferenceStyle);
    }

    public SeekBarPreference(@NonNull Context context) {
        this(context, null);
    }
}
