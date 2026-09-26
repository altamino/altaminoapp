package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes7.dex */
public class ReactiveGuide extends View implements SharedValues.SharedValuesListener {
    private boolean mAnimateChange;
    private boolean mApplyToAllConstraintSets;
    private int mApplyToConstraintSetId;
    private int mAttributeId;

    public ReactiveGuide(Context context) {
        super(context);
        this.mAttributeId = -1;
        this.mAnimateChange = false;
        this.mApplyToConstraintSetId = 0;
        this.mApplyToAllConstraintSets = true;
        super.setVisibility(8);
        a(null);
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public int getApplyToConstraintSetId() {
        return this.mApplyToConstraintSetId;
    }

    public int getAttributeId() {
        return this.mAttributeId;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(0, 0);
    }

    public void setAnimateChange(boolean animate) {
        this.mAnimateChange = animate;
    }

    public void setApplyToConstraintSetId(int id) {
        this.mApplyToConstraintSetId = id;
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
    }

    private void a(AttributeSet attrs) {
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_ReactiveGuide);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_valueId) {
                    this.mAttributeId = typedArrayObtainStyledAttributes.getResourceId(index, this.mAttributeId);
                } else if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_animateChange) {
                    this.mAnimateChange = typedArrayObtainStyledAttributes.getBoolean(index, this.mAnimateChange);
                } else if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_applyToConstraintSet) {
                    this.mApplyToConstraintSetId = typedArrayObtainStyledAttributes.getResourceId(index, this.mApplyToConstraintSetId);
                } else if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_applyToAllConstraintSets) {
                    this.mApplyToAllConstraintSets = typedArrayObtainStyledAttributes.getBoolean(index, this.mApplyToAllConstraintSets);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        if (this.mAttributeId != -1) {
            ConstraintLayout.getSharedValues().a(this.mAttributeId, this);
        }
    }

    public void setAttributeId(int id) {
        SharedValues sharedValues = ConstraintLayout.getSharedValues();
        int i10 = this.mAttributeId;
        if (i10 != -1) {
            sharedValues.b(i10, this);
        }
        this.mAttributeId = id;
        if (id != -1) {
            sharedValues.a(id, this);
        }
    }

    public void setGuidelineBegin(int margin) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guideBegin = margin;
        setLayoutParams(layoutParams);
    }

    public void setGuidelineEnd(int margin) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guideEnd = margin;
        setLayoutParams(layoutParams);
    }

    public void setGuidelinePercent(float ratio) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guidePercent = ratio;
        setLayoutParams(layoutParams);
    }

    public ReactiveGuide(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mAttributeId = -1;
        this.mAnimateChange = false;
        this.mApplyToConstraintSetId = 0;
        this.mApplyToAllConstraintSets = true;
        super.setVisibility(8);
        a(attrs);
    }

    public ReactiveGuide(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mAttributeId = -1;
        this.mAnimateChange = false;
        this.mApplyToConstraintSetId = 0;
        this.mApplyToAllConstraintSets = true;
        super.setVisibility(8);
        a(attrs);
    }

    public ReactiveGuide(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr);
        this.mAttributeId = -1;
        this.mAnimateChange = false;
        this.mApplyToConstraintSetId = 0;
        this.mApplyToAllConstraintSets = true;
        super.setVisibility(8);
        a(attrs);
    }
}
