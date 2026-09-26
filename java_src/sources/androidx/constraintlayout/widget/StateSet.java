package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes4.dex */
public class StateSet {
    private static final boolean DEBUG = false;
    public static final String TAG = "ConstraintLayoutStates";
    ConstraintSet mDefaultConstraintSet;
    int mDefaultState = -1;
    int mCurrentStateId = -1;
    int mCurrentConstraintNumber = -1;
    private SparseArray<State> mStateList = new SparseArray<>();
    private SparseArray<ConstraintSet> mConstraintSetMap = new SparseArray<>();
    private ConstraintsChangedListener mConstraintsChangedListener = null;

    static class State {
        int mConstraintID;
        int mId;
        boolean mIsLayout;
        ArrayList<Variant> mVariants = new ArrayList<>();

        public int b(float width, float height) {
            for (int i10 = 0; i10 < this.mVariants.size(); i10++) {
                if (this.mVariants.get(i10).a(width, height)) {
                    return i10;
                }
            }
            return -1;
        }

        void a(Variant size) {
            this.mVariants.add(size);
        }

        public State(Context context, XmlPullParser parser) {
            this.mConstraintID = -1;
            this.mIsLayout = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.State_android_id) {
                    this.mId = typedArrayObtainStyledAttributes.getResourceId(index, this.mId);
                } else if (index == R.styleable.State_constraints) {
                    this.mConstraintID = typedArrayObtainStyledAttributes.getResourceId(index, this.mConstraintID);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.mConstraintID);
                    context.getResources().getResourceName(this.mConstraintID);
                    if ("layout".equals(resourceTypeName)) {
                        this.mIsLayout = true;
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static class Variant {
        int mConstraintID;
        int mId;
        boolean mIsLayout;
        float mMaxHeight;
        float mMaxWidth;
        float mMinHeight;
        float mMinWidth;

        boolean a(float widthDp, float heightDp) {
            if (!Float.isNaN(this.mMinWidth) && widthDp < this.mMinWidth) {
                return false;
            }
            if (!Float.isNaN(this.mMinHeight) && heightDp < this.mMinHeight) {
                return false;
            }
            if (Float.isNaN(this.mMaxWidth) || widthDp <= this.mMaxWidth) {
                return Float.isNaN(this.mMaxHeight) || heightDp <= this.mMaxHeight;
            }
            return false;
        }

        public Variant(Context context, XmlPullParser parser) {
            this.mMinWidth = Float.NaN;
            this.mMinHeight = Float.NaN;
            this.mMaxWidth = Float.NaN;
            this.mMaxHeight = Float.NaN;
            this.mConstraintID = -1;
            this.mIsLayout = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.Variant_constraints) {
                    this.mConstraintID = typedArrayObtainStyledAttributes.getResourceId(index, this.mConstraintID);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.mConstraintID);
                    context.getResources().getResourceName(this.mConstraintID);
                    if ("layout".equals(resourceTypeName)) {
                        this.mIsLayout = true;
                    }
                } else if (index == R.styleable.Variant_region_heightLessThan) {
                    this.mMaxHeight = typedArrayObtainStyledAttributes.getDimension(index, this.mMaxHeight);
                } else if (index == R.styleable.Variant_region_heightMoreThan) {
                    this.mMinHeight = typedArrayObtainStyledAttributes.getDimension(index, this.mMinHeight);
                } else if (index == R.styleable.Variant_region_widthLessThan) {
                    this.mMaxWidth = typedArrayObtainStyledAttributes.getDimension(index, this.mMaxWidth);
                } else if (index == R.styleable.Variant_region_widthMoreThan) {
                    this.mMinWidth = typedArrayObtainStyledAttributes.getDimension(index, this.mMinWidth);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public int c(int id, int width, int height) {
        return d(-1, id, width, height);
    }

    public int d(int currentId, int id, float width, float height) {
        int iB;
        if (currentId != id) {
            State state = this.mStateList.get(id);
            if (state == null) {
                return -1;
            }
            int iB2 = state.b(width, height);
            return iB2 == -1 ? state.mConstraintID : state.mVariants.get(iB2).mConstraintID;
        }
        State stateValueAt = id == -1 ? this.mStateList.valueAt(0) : this.mStateList.get(this.mCurrentStateId);
        if (stateValueAt == null) {
            return -1;
        }
        if ((this.mCurrentConstraintNumber == -1 || !stateValueAt.mVariants.get(currentId).a(width, height)) && currentId != (iB = stateValueAt.b(width, height))) {
            return iB == -1 ? stateValueAt.mConstraintID : stateValueAt.mVariants.get(iB).mConstraintID;
        }
        return currentId;
    }

    public int a(int currentConstrainSettId, int stateId, float width, float height) {
        State state = this.mStateList.get(stateId);
        if (state == null) {
            return stateId;
        }
        if (width == -1.0f || height == -1.0f) {
            if (state.mConstraintID == currentConstrainSettId) {
                return currentConstrainSettId;
            }
            Iterator<Variant> it = state.mVariants.iterator();
            while (it.hasNext()) {
                if (currentConstrainSettId == it.next().mConstraintID) {
                    return currentConstrainSettId;
                }
            }
            return state.mConstraintID;
        }
        Variant variant = null;
        for (Variant variant2 : state.mVariants) {
            if (variant2.a(width, height)) {
                if (currentConstrainSettId == variant2.mConstraintID) {
                    return currentConstrainSettId;
                }
                variant = variant2;
            }
        }
        return variant != null ? variant.mConstraintID : state.mConstraintID;
    }

    public StateSet(Context context, XmlPullParser parser) {
        b(context, parser);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x007c  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void b(Context context, XmlPullParser parser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.StateSet);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R.styleable.StateSet_defaultState) {
                this.mDefaultState = typedArrayObtainStyledAttributes.getResourceId(index, this.mDefaultState);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        try {
            int eventType = parser.getEventType();
            State state = null;
            while (true) {
                byte b7 = 1;
                if (eventType != 1) {
                    if (eventType != 0) {
                        if (eventType != 2) {
                            if (eventType == 3 && "StateSet".equals(parser.getName())) {
                                return;
                            }
                        } else {
                            String name = parser.getName();
                            switch (name.hashCode()) {
                                case 80204913:
                                    if (name.equals("State")) {
                                        b7 = 2;
                                    } else {
                                        b7 = -1;
                                    }
                                    break;
                                case 1301459538:
                                    if (name.equals("LayoutDescription")) {
                                        b7 = 0;
                                    } else {
                                        b7 = -1;
                                    }
                                    break;
                                case 1382829617:
                                    if (!name.equals("StateSet")) {
                                        b7 = -1;
                                    }
                                    break;
                                case 1901439077:
                                    if (name.equals("Variant")) {
                                        b7 = 3;
                                    } else {
                                        b7 = -1;
                                    }
                                    break;
                                default:
                                    b7 = -1;
                                    break;
                            }
                            if (b7 != 2) {
                                if (b7 == 3) {
                                    Variant variant = new Variant(context, parser);
                                    if (state != null) {
                                        state.a(variant);
                                    }
                                }
                            } else {
                                state = new State(context, parser);
                                this.mStateList.put(state.mId, state);
                            }
                        }
                    } else {
                        parser.getName();
                    }
                    eventType = parser.next();
                } else {
                    return;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }
}
