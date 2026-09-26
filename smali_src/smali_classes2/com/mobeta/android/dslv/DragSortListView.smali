.class public Lcom/mobeta/android/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobeta/android/dslv/DragSortListView$e;,
        Lcom/mobeta/android/dslv/DragSortListView$k;,
        Lcom/mobeta/android/dslv/DragSortListView$l;,
        Lcom/mobeta/android/dslv/DragSortListView$h;,
        Lcom/mobeta/android/dslv/DragSortListView$f;,
        Lcom/mobeta/android/dslv/DragSortListView$i;,
        Lcom/mobeta/android/dslv/DragSortListView$c;,
        Lcom/mobeta/android/dslv/DragSortListView$j;,
        Lcom/mobeta/android/dslv/DragSortListView$d;,
        Lcom/mobeta/android/dslv/DragSortListView$n;,
        Lcom/mobeta/android/dslv/DragSortListView$m;,
        Lcom/mobeta/android/dslv/DragSortListView$g;,
        Lcom/mobeta/android/dslv/DragSortListView$o;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$c;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mCancelOnDataChanged:Z

.field private mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$l;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/mobeta/android/dslv/DragSortListView$d;

.field private mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$f;

.field private mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$h;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$i;

.field private mDropListener:Lcom/mobeta/android/dslv/DragSortListView$j;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$k;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$m;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$n;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$e;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 23

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    .line 7
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    new-instance v1, Landroid/graphics/Point;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 13
    .line 14
    iput-object v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 15
    .line 16
    new-instance v1, Landroid/graphics/Point;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 20
    .line 21
    iput-object v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 25
    .line 26
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    .line 28
    iput v2, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 29
    .line 30
    iput v2, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 31
    .line 32
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    iput-boolean v3, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 36
    .line 37
    iput v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 38
    .line 39
    iput v3, v7, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 40
    .line 41
    iput v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 42
    .line 43
    new-array v4, v3, [Landroid/view/View;

    .line 44
    .line 45
    iput-object v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 46
    .line 47
    .line 48
    const v4, 0x3eaaaaab

    .line 49
    .line 50
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 51
    .line 52
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 53
    .line 54
    const/high16 v8, 0x3f000000    # 0.5f

    .line 55
    .line 56
    iput v8, v7, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 57
    .line 58
    new-instance v4, Lcom/mobeta/android/dslv/DragSortListView$a;

    .line 59
    .line 60
    .line 61
    invoke-direct {v4, v7}, Lcom/mobeta/android/dslv/DragSortListView$a;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 62
    .line 63
    iput-object v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$e;

    .line 64
    .line 65
    iput v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 66
    .line 67
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 68
    .line 69
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 70
    const/4 v4, 0x0

    .line 71
    .line 72
    iput-object v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$k;

    .line 73
    .line 74
    iput v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 75
    .line 76
    const/high16 v4, 0x3e800000    # 0.25f

    .line 77
    .line 78
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 79
    const/4 v4, 0x0

    .line 80
    .line 81
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 82
    .line 83
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 84
    .line 85
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 86
    .line 87
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 88
    .line 89
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$l;

    .line 90
    const/4 v6, 0x3

    .line 91
    .line 92
    .line 93
    invoke-direct {v5, v7, v6}, Lcom/mobeta/android/dslv/DragSortListView$l;-><init>(Lcom/mobeta/android/dslv/DragSortListView;I)V

    .line 94
    .line 95
    iput-object v5, v7, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$l;

    .line 96
    .line 97
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 98
    .line 99
    iput-boolean v3, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCancelOnDataChanged:Z

    .line 100
    .line 101
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 102
    .line 103
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 104
    .line 105
    const/16 v5, 0x96

    .line 106
    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    move-result-object v6

    .line 112
    .line 113
    sget-object v9, Lcom/mobeta/android/dslv/d;->DragSortListView:[I

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v0, v9, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 117
    move-result-object v9

    .line 118
    .line 119
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_collapsed_height:I

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 123
    move-result v0

    .line 124
    .line 125
    .line 126
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 127
    move-result v0

    .line 128
    .line 129
    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 130
    .line 131
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_track_drag_sort:I

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 135
    move-result v0

    .line 136
    .line 137
    iput-boolean v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 138
    .line 139
    if-eqz v0, :cond_0

    .line 140
    .line 141
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$h;

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v7}, Lcom/mobeta/android/dslv/DragSortListView$h;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 145
    .line 146
    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$h;

    .line 147
    .line 148
    :cond_0
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_float_alpha:I

    .line 149
    .line 150
    iget v6, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9, v0, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 154
    move-result v0

    .line 155
    .line 156
    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 157
    .line 158
    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 159
    .line 160
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_drag_enabled:I

    .line 161
    .line 162
    iget-boolean v6, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 163
    .line 164
    .line 165
    invoke-virtual {v9, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 166
    move-result v0

    .line 167
    .line 168
    iput-boolean v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 169
    .line 170
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_slide_shuffle_speed:I

    .line 171
    .line 172
    const/high16 v6, 0x3f400000    # 0.75f

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v0, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 176
    move-result v0

    .line 177
    .line 178
    sub-float v0, v2, v0

    .line 179
    .line 180
    .line 181
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 182
    move-result v0

    .line 183
    .line 184
    .line 185
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    .line 186
    move-result v0

    .line 187
    .line 188
    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 189
    .line 190
    cmpl-float v0, v0, v4

    .line 191
    .line 192
    if-lez v0, :cond_1

    .line 193
    move v0, v3

    .line 194
    goto :goto_0

    .line 195
    :cond_1
    move v0, v1

    .line 196
    .line 197
    :goto_0
    iput-boolean v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 198
    .line 199
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_drag_scroll_start:I

    .line 200
    .line 201
    iget v2, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 205
    move-result v0

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDragScrollStart(F)V

    .line 209
    .line 210
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_max_drag_scroll_speed:I

    .line 211
    .line 212
    iget v2, v7, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 213
    .line 214
    .line 215
    invoke-virtual {v9, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 216
    move-result v0

    .line 217
    .line 218
    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 219
    .line 220
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_remove_animation_duration:I

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 224
    .line 225
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_drop_animation_duration:I

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 229
    move-result v10

    .line 230
    .line 231
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_use_default_controller:I

    .line 232
    .line 233
    .line 234
    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 235
    move-result v0

    .line 236
    .line 237
    if-eqz v0, :cond_2

    .line 238
    .line 239
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_remove_enabled:I

    .line 240
    .line 241
    .line 242
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 243
    move-result v11

    .line 244
    .line 245
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_remove_mode:I

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 249
    move-result v4

    .line 250
    .line 251
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_sort_enabled:I

    .line 252
    .line 253
    .line 254
    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 255
    move-result v12

    .line 256
    .line 257
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_drag_start_mode:I

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 261
    move-result v3

    .line 262
    .line 263
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_drag_handle_id:I

    .line 264
    .line 265
    .line 266
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 267
    move-result v2

    .line 268
    .line 269
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_fling_handle_id:I

    .line 270
    .line 271
    .line 272
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 273
    move-result v6

    .line 274
    .line 275
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_click_remove_id:I

    .line 276
    .line 277
    .line 278
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 279
    move-result v5

    .line 280
    .line 281
    sget v0, Lcom/mobeta/android/dslv/d;->DragSortListView_float_background_color:I

    .line 282
    .line 283
    const/high16 v1, -0x1000000

    .line 284
    .line 285
    .line 286
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 287
    move-result v13

    .line 288
    .line 289
    new-instance v14, Lcom/mobeta/android/dslv/a;

    .line 290
    move-object v0, v14

    .line 291
    .line 292
    move-object/from16 v1, p0

    .line 293
    .line 294
    .line 295
    invoke-direct/range {v0 .. v6}, Lcom/mobeta/android/dslv/a;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v14, v11}, Lcom/mobeta/android/dslv/a;->setRemoveEnabled(Z)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v14, v12}, Lcom/mobeta/android/dslv/a;->setSortEnabled(Z)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v14, v13}, Lcom/mobeta/android/dslv/e;->setBackgroundColor(I)V

    .line 305
    .line 306
    iput-object v14, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$k;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 310
    .line 311
    .line 312
    :cond_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 313
    move v5, v10

    .line 314
    .line 315
    :cond_3
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$f;

    .line 316
    .line 317
    .line 318
    invoke-direct {v0, v7}, Lcom/mobeta/android/dslv/DragSortListView$f;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 319
    .line 320
    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$f;

    .line 321
    .line 322
    if-lez v5, :cond_4

    .line 323
    .line 324
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$i;

    .line 325
    .line 326
    .line 327
    invoke-direct {v0, v7, v8, v5}, Lcom/mobeta/android/dslv/DragSortListView$i;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    .line 328
    .line 329
    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$i;

    .line 330
    .line 331
    :cond_4
    const-wide/16 v9, 0x0

    .line 332
    .line 333
    const-wide/16 v11, 0x0

    .line 334
    const/4 v13, 0x3

    .line 335
    const/4 v14, 0x0

    .line 336
    const/4 v15, 0x0

    .line 337
    .line 338
    const/16 v16, 0x0

    .line 339
    .line 340
    const/16 v17, 0x0

    .line 341
    .line 342
    const/16 v18, 0x0

    .line 343
    .line 344
    const/16 v19, 0x0

    .line 345
    .line 346
    const/16 v20, 0x0

    .line 347
    .line 348
    const/16 v21, 0x0

    .line 349
    .line 350
    const/16 v22, 0x0

    .line 351
    .line 352
    .line 353
    invoke-static/range {v9 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 354
    move-result-object v0

    .line 355
    .line 356
    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 357
    .line 358
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$b;

    .line 359
    .line 360
    .line 361
    invoke-direct {v0, v7}, Lcom/mobeta/android/dslv/DragSortListView$b;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 362
    .line 363
    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 364
    return-void
.end method

.method static bridge synthetic A(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->S()V

    return-void
.end method

.method static bridge synthetic B(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->T(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic C(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->V(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic D(Lcom/mobeta/android/dslv/DragSortListView;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->W(II)I

    move-result p0

    return p0
.end method

.method private E()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 12
    move-result v2

    .line 13
    sub-int/2addr v2, v0

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 18
    move-result v2

    .line 19
    sub-int/2addr v1, v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 23
    move-result v4

    .line 24
    .line 25
    add-int/lit8 v4, v4, -0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 29
    move-result v5

    .line 30
    sub-int/2addr v4, v5

    .line 31
    sub-int/2addr v4, v0

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 35
    move-result v1

    .line 36
    .line 37
    :goto_0
    if-gt v2, v1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    add-int v5, v0, v2

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v5, v4, v3}, Lcom/mobeta/android/dslv/DragSortListView;->F(ILandroid/view/View;Z)V

    .line 49
    .line 50
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method private F(ILandroid/view/View;Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 7
    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 11
    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 15
    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    const/4 p3, -0x2

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->J(ILandroid/view/View;Z)I

    .line 22
    move-result p3

    .line 23
    .line 24
    :goto_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    .line 26
    if-eq p3, v1, :cond_1

    .line 27
    .line 28
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    :cond_1
    iget p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 34
    .line 35
    if-eq p1, p3, :cond_2

    .line 36
    .line 37
    iget p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 38
    .line 39
    if-ne p1, p3, :cond_4

    .line 40
    .line 41
    :cond_2
    iget p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 42
    .line 43
    if-ge p1, p3, :cond_3

    .line 44
    move-object p3, p2

    .line 45
    .line 46
    check-cast p3, Lcom/mobeta/android/dslv/b;

    .line 47
    .line 48
    const/16 v0, 0x50

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, v0}, Lcom/mobeta/android/dslv/b;->setGravity(I)V

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_3
    if-le p1, p3, :cond_4

    .line 55
    move-object p3, p2

    .line 56
    .line 57
    check-cast p3, Lcom/mobeta/android/dslv/b;

    .line 58
    .line 59
    const/16 v0, 0x30

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, v0}, Lcom/mobeta/android/dslv/b;->setGravity(I)V

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 66
    move-result p3

    .line 67
    .line 68
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 69
    .line 70
    if-ne p1, v0, :cond_5

    .line 71
    .line 72
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 73
    .line 74
    if-eqz p1, :cond_5

    .line 75
    const/4 p1, 0x4

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    const/4 p1, 0x0

    .line 78
    .line 79
    :goto_2
    if-eq p1, p3, :cond_6

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_6
    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 7
    .line 8
    if-ge v1, v0, :cond_1

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 19
    move-result v1

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 30
    :cond_1
    return-void
.end method

.method private H(ILandroid/view/View;II)I
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->T(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->I(II)I

    .line 12
    move-result v1

    .line 13
    .line 14
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 15
    .line 16
    if-eq p1, v2, :cond_0

    .line 17
    .line 18
    sub-int v3, p2, v0

    .line 19
    .line 20
    sub-int v0, v1, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v3, p2

    .line 23
    move v0, v1

    .line 24
    .line 25
    :goto_0
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 26
    .line 27
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 28
    .line 29
    if-eq v2, v5, :cond_1

    .line 30
    .line 31
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 32
    .line 33
    if-eq v2, v6, :cond_1

    .line 34
    .line 35
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 36
    sub-int/2addr v4, v2

    .line 37
    :cond_1
    const/4 v2, 0x0

    .line 38
    .line 39
    if-gt p1, p3, :cond_2

    .line 40
    .line 41
    if-le p1, v5, :cond_6

    .line 42
    .line 43
    sub-int v3, v4, v0

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_2
    if-ne p1, p4, :cond_4

    .line 47
    .line 48
    if-gt p1, v5, :cond_3

    .line 49
    sub-int/2addr v3, v4

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_3
    iget p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 53
    .line 54
    if-ne p1, p3, :cond_7

    .line 55
    .line 56
    sub-int v3, p2, v1

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_4
    if-gt p1, v5, :cond_5

    .line 60
    .line 61
    rsub-int/lit8 v3, v4, 0x0

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_5
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 65
    .line 66
    if-ne p1, p2, :cond_6

    .line 67
    .line 68
    rsub-int/lit8 v3, v0, 0x0

    .line 69
    goto :goto_1

    .line 70
    :cond_6
    move v3, v2

    .line 71
    :cond_7
    :goto_1
    return v3
.end method

.method private I(II)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 10
    .line 11
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    :goto_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 19
    .line 20
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 21
    .line 22
    sub-int v3, v1, v2

    .line 23
    .line 24
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 25
    int-to-float v5, v3

    .line 26
    mul-float/2addr v4, v5

    .line 27
    float-to-int v4, v4

    .line 28
    .line 29
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 30
    .line 31
    if-ne p1, v5, :cond_4

    .line 32
    .line 33
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 34
    .line 35
    if-ne v5, p1, :cond_2

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    add-int p2, v4, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move p2, v1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_2
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 45
    .line 46
    if-ne v5, p1, :cond_3

    .line 47
    .line 48
    sub-int p2, v1, v4

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move p2, v2

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_4
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 54
    .line 55
    if-ne p1, v1, :cond_6

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    add-int/2addr p2, v4

    .line 59
    goto :goto_1

    .line 60
    :cond_5
    add-int/2addr p2, v3

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_6
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 64
    .line 65
    if-ne p1, v0, :cond_7

    .line 66
    add-int/2addr p2, v3

    .line 67
    sub-int/2addr p2, v4

    .line 68
    :cond_7
    :goto_1
    return p2
.end method

.method private J(ILandroid/view/View;Z)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->U(ILandroid/view/View;Z)I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->I(II)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private L()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    return-void
.end method

.method private M(II)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 3
    .line 4
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    .line 5
    sub-int/2addr p1, v1

    .line 6
    .line 7
    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 8
    .line 9
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    .line 10
    .line 11
    sub-int p1, p2, p1

    .line 12
    .line 13
    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 14
    const/4 p1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->Q(Z)V

    .line 18
    .line 19
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    .line 20
    .line 21
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 22
    add-int/2addr v0, v1

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v0

    .line 27
    .line 28
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    .line 29
    .line 30
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 31
    sub-int/2addr v1, v2

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 35
    move-result p2

    .line 36
    .line 37
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$f;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$f;->a()I

    .line 41
    move-result v1

    .line 42
    .line 43
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 44
    const/4 v3, -0x1

    .line 45
    .line 46
    if-le v0, v2, :cond_1

    .line 47
    .line 48
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    .line 49
    .line 50
    if-le v0, v4, :cond_1

    .line 51
    .line 52
    if-eq v1, p1, :cond_1

    .line 53
    .line 54
    if-eq v1, v3, :cond_0

    .line 55
    .line 56
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$f;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView$f;->d(Z)V

    .line 60
    .line 61
    :cond_0
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$f;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView$f;->c(I)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_1
    if-ge p2, v2, :cond_3

    .line 68
    .line 69
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    .line 70
    .line 71
    if-ge p2, v2, :cond_3

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    if-eq v1, v3, :cond_2

    .line 76
    .line 77
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$f;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView$f;->d(Z)V

    .line 81
    .line 82
    :cond_2
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$f;

    .line 83
    const/4 p2, 0x0

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView$f;->c(I)V

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_3
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    .line 90
    .line 91
    if-lt p2, v1, :cond_4

    .line 92
    .line 93
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    .line 94
    .line 95
    if-gt v0, p2, :cond_4

    .line 96
    .line 97
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$f;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/mobeta/android/dslv/DragSortListView$f;->b()Z

    .line 101
    move-result p2

    .line 102
    .line 103
    if-eqz p2, :cond_4

    .line 104
    .line 105
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$f;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView$f;->d(Z)V

    .line 109
    :cond_4
    :goto_0
    return-void
.end method

.method private N()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$k;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$k;->onDestroyFloatView(Landroid/view/View;)V

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    :cond_1
    return-void
.end method

.method private O()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 6
    .line 7
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 8
    const/4 v2, 0x3

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 13
    .line 14
    :cond_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 15
    .line 16
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$l;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$l;->b()V

    .line 24
    return-void
.end method

.method private P(ILandroid/view/View;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->k0()V

    .line 7
    .line 8
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 9
    .line 10
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->l0()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->E()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->H(ILandroid/view/View;II)I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 27
    move-result p2

    .line 28
    add-int/2addr p2, v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 32
    move-result v0

    .line 33
    sub-int/2addr p2, v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    .line 40
    .line 41
    :cond_0
    if-nez v2, :cond_1

    .line 42
    .line 43
    if-eqz p3, :cond_2

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    .line 49
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 50
    return-void
.end method

.method private Q(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    .line 10
    div-int/lit8 v1, v1, 0x2

    .line 11
    add-int/2addr v0, v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result v1

    .line 16
    .line 17
    div-int/lit8 v1, v1, 0x2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/mobeta/android/dslv/DragSortListView;->P(ILandroid/view/View;Z)V

    .line 28
    return-void
.end method

.method private R(ILandroid/graphics/Canvas;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 16
    move-result v2

    .line 17
    .line 18
    sub-int v2, p1, v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Landroid/view/ViewGroup;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 30
    move-result v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 34
    move-result v4

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    move-result v5

    .line 39
    sub-int/2addr v4, v5

    .line 40
    const/4 v5, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 48
    move-result v5

    .line 49
    .line 50
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 51
    .line 52
    if-le p1, v6, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 56
    move-result p1

    .line 57
    add-int/2addr p1, v5

    .line 58
    add-int/2addr v1, p1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 63
    move-result p1

    .line 64
    sub-int/2addr p1, v5

    .line 65
    .line 66
    sub-int v1, p1, v1

    .line 67
    move v7, v1

    .line 68
    move v1, p1

    .line 69
    move p1, v7

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v3, p1, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3, p1, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 85
    :cond_1
    return-void
.end method

.method private S()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$j;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 21
    move-result v0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$j;

    .line 24
    .line 25
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 26
    sub-int/2addr v2, v0

    .line 27
    .line 28
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 29
    sub-int/2addr v3, v0

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v2, v3}, Lcom/mobeta/android/dslv/DragSortListView$j;->drop(II)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->N()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->G()V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->L()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->E()V

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x3

    .line 50
    .line 51
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    .line 55
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 56
    :goto_0
    return-void
.end method

.method private T(I)I
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 10
    move-result v0

    .line 11
    .line 12
    sub-int v0, p1, v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->U(ILandroid/view/View;Z)I

    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$l;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$l;->c(I)I

    .line 29
    move-result v0

    .line 30
    const/4 v1, -0x1

    .line 31
    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    return v0

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 45
    move-result v2

    .line 46
    .line 47
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 48
    array-length v3, v3

    .line 49
    .line 50
    if-eq v2, v3, :cond_3

    .line 51
    .line 52
    new-array v2, v2, [Landroid/view/View;

    .line 53
    .line 54
    iput-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 55
    :cond_3
    const/4 v2, 0x0

    .line 56
    .line 57
    if-ltz v1, :cond_5

    .line 58
    .line 59
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 60
    .line 61
    aget-object v3, v3, v1

    .line 62
    .line 63
    if-nez v3, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 70
    .line 71
    aput-object v0, v2, v1

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-interface {v0, p1, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    move-result-object v0

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_5
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    :goto_0
    const/4 v1, 0x1

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->U(ILandroid/view/View;Z)I

    .line 86
    move-result v0

    .line 87
    .line 88
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$l;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView$l;->a(II)V

    .line 92
    return v0
.end method

.method private U(ILandroid/view/View;Z)I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lt p1, v0, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 20
    move-result v2

    .line 21
    sub-int/2addr v0, v2

    .line 22
    .line 23
    if-lt p1, v0, :cond_1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    .line 40
    if-lez p1, :cond_3

    .line 41
    return p1

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 45
    move-result p1

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    if-eqz p3, :cond_5

    .line 50
    .line 51
    .line 52
    :cond_4
    invoke-direct {p0, p2}, Lcom/mobeta/android/dslv/DragSortListView;->a0(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 56
    move-result p1

    .line 57
    :cond_5
    return p1
.end method

.method private V(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sub-int v0, p1, v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->T(I)I

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->I(II)I

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method private W(II)I
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-le p1, v0, :cond_7

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 14
    move-result v0

    .line 15
    sub-int/2addr v0, v1

    .line 16
    .line 17
    if-lt p1, v0, :cond_0

    .line 18
    goto :goto_2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 22
    move-result v0

    .line 23
    .line 24
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 25
    .line 26
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 27
    sub-int/2addr v1, v2

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->T(I)I

    .line 31
    move-result v2

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->V(I)I

    .line 35
    move-result v3

    .line 36
    .line 37
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 38
    .line 39
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 40
    .line 41
    if-gt v4, v5, :cond_3

    .line 42
    .line 43
    if-ne p1, v4, :cond_2

    .line 44
    .line 45
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 46
    .line 47
    if-eq v6, v4, :cond_2

    .line 48
    .line 49
    if-ne p1, v5, :cond_1

    .line 50
    add-int/2addr p2, v3

    .line 51
    .line 52
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 53
    :goto_0
    sub-int/2addr p2, v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sub-int/2addr v3, v2

    .line 56
    add-int/2addr p2, v3

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_2
    if-le p1, v4, :cond_5

    .line 60
    .line 61
    if-gt p1, v5, :cond_5

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_3
    if-le p1, v5, :cond_4

    .line 65
    .line 66
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 67
    .line 68
    if-gt p1, v6, :cond_4

    .line 69
    add-int/2addr p2, v1

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_4
    if-ne p1, v4, :cond_5

    .line 73
    .line 74
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 75
    .line 76
    if-eq v1, v4, :cond_5

    .line 77
    sub-int/2addr v3, v2

    .line 78
    add-int/2addr p2, v3

    .line 79
    .line 80
    :cond_5
    :goto_1
    if-gt p1, v5, :cond_6

    .line 81
    .line 82
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 83
    sub-int/2addr v1, v0

    .line 84
    .line 85
    add-int/lit8 p1, p1, -0x1

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->T(I)I

    .line 89
    move-result p1

    .line 90
    sub-int/2addr v1, p1

    .line 91
    .line 92
    div-int/lit8 v1, v1, 0x2

    .line 93
    add-int/2addr p2, v1

    .line 94
    goto :goto_2

    .line 95
    :cond_6
    sub-int/2addr v2, v0

    .line 96
    .line 97
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 98
    sub-int/2addr v2, p1

    .line 99
    .line 100
    div-int/lit8 v2, v2, 0x2

    .line 101
    add-int/2addr p2, v2

    .line 102
    :cond_7
    :goto_2
    return p2
.end method

.method private Z()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->a0(Landroid/view/View;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 16
    .line 17
    div-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 20
    :cond_0
    return-void
.end method

.method static bridge synthetic a(Lcom/mobeta/android/dslv/DragSortListView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelOnDataChanged:Z

    return p0
.end method

.method private a0(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, -0x2

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    :cond_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingLeft()I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingRight()I

    .line 26
    move-result v3

    .line 27
    add-int/2addr v2, v3

    .line 28
    .line 29
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 33
    move-result v1

    .line 34
    .line 35
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    const/high16 v2, 0x40000000    # 2.0f

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 43
    move-result v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 49
    move-result v0

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 53
    return-void
.end method

.method static bridge synthetic b(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    return p0
.end method

.method static bridge synthetic c(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return p0
.end method

.method static bridge synthetic d(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    return p0
.end method

.method private d0(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    and-int/lit16 v0, v0, 0xff

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    .line 11
    .line 12
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastX:I

    .line 13
    .line 14
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    .line 15
    .line 16
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 20
    move-result v1

    .line 21
    float-to-int v1, v1

    .line 22
    .line 23
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 27
    move-result v1

    .line 28
    float-to-int v1, v1

    .line 29
    .line 30
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    .line 35
    .line 36
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastX:I

    .line 37
    .line 38
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 42
    move-result v0

    .line 43
    float-to-int v0, v0

    .line 44
    .line 45
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    .line 46
    sub-int/2addr v0, v1

    .line 47
    .line 48
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mOffsetX:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 52
    move-result p1

    .line 53
    float-to-int p1, p1

    .line 54
    .line 55
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    .line 56
    sub-int/2addr p1, v0

    .line 57
    .line 58
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mOffsetY:I

    .line 59
    return-void
.end method

.method static bridge synthetic e(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return p0
.end method

.method static bridge synthetic f(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    return p0
.end method

.method static bridge synthetic g(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    return p0
.end method

.method static bridge synthetic h(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    return p0
.end method

.method static bridge synthetic j(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    return p0
.end method

.method static bridge synthetic k(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return p0
.end method

.method private k0()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$k;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 7
    .line 8
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    .line 9
    .line 10
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$k;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1, v2, v3}, Lcom/mobeta/android/dslv/DragSortListView$k;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 27
    .line 28
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 29
    .line 30
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    move-result v2

    .line 35
    .line 36
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 37
    .line 38
    and-int/lit8 v4, v3, 0x1

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    if-le v1, v2, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 45
    .line 46
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    and-int/lit8 v3, v3, 0x2

    .line 50
    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    if-ge v1, v2, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 56
    .line 57
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 61
    move-result v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 65
    move-result v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 69
    move-result v3

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 73
    move-result v4

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 77
    move-result v5

    .line 78
    .line 79
    if-ge v3, v1, :cond_3

    .line 80
    sub-int/2addr v1, v3

    .line 81
    .line 82
    add-int/lit8 v1, v1, -0x1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 90
    move-result v5

    .line 91
    .line 92
    :cond_3
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 93
    .line 94
    and-int/lit8 v1, v1, 0x8

    .line 95
    .line 96
    if-nez v1, :cond_4

    .line 97
    .line 98
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 99
    .line 100
    if-gt v3, v1, :cond_4

    .line 101
    sub-int/2addr v1, v3

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 109
    move-result v1

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 113
    move-result v5

    .line 114
    .line 115
    .line 116
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 117
    move-result v1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 121
    move-result v6

    .line 122
    sub-int/2addr v1, v6

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 126
    move-result v6

    .line 127
    sub-int/2addr v6, v2

    .line 128
    .line 129
    add-int/lit8 v6, v6, -0x1

    .line 130
    .line 131
    if-lt v4, v6, :cond_5

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 135
    move-result v1

    .line 136
    sub-int/2addr v1, v2

    .line 137
    .line 138
    add-int/lit8 v1, v1, -0x1

    .line 139
    sub-int/2addr v1, v3

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 147
    move-result v1

    .line 148
    .line 149
    :cond_5
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 150
    .line 151
    and-int/lit8 v2, v2, 0x4

    .line 152
    .line 153
    if-nez v2, :cond_6

    .line 154
    .line 155
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 156
    .line 157
    if-lt v4, v2, :cond_6

    .line 158
    sub-int/2addr v2, v3

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 162
    move-result-object v2

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 166
    move-result v2

    .line 167
    .line 168
    .line 169
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 170
    move-result v1

    .line 171
    .line 172
    :cond_6
    if-ge v0, v5, :cond_7

    .line 173
    .line 174
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 175
    .line 176
    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 177
    goto :goto_1

    .line 178
    .line 179
    :cond_7
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 180
    add-int/2addr v0, v2

    .line 181
    .line 182
    if-le v0, v1, :cond_8

    .line 183
    .line 184
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 185
    sub-int/2addr v1, v2

    .line 186
    .line 187
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 188
    .line 189
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 190
    .line 191
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 192
    .line 193
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 194
    add-int/2addr v0, v1

    .line 195
    .line 196
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    .line 197
    return-void
.end method

.method static bridge synthetic l(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    return p0
.end method

.method private l0()Z
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 7
    .line 8
    sub-int v2, v1, v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v1

    .line 19
    .line 20
    div-int/lit8 v1, v1, 0x2

    .line 21
    add-int/2addr v1, v0

    .line 22
    .line 23
    sub-int v0, v1, v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 35
    move-result v2

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->W(II)I

    .line 39
    move-result v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 43
    move-result v4

    .line 44
    .line 45
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    .line 46
    .line 47
    if-ge v5, v3, :cond_4

    .line 48
    .line 49
    :goto_0
    if-ltz v1, :cond_3

    .line 50
    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->V(I)I

    .line 55
    move-result v2

    .line 56
    .line 57
    if-nez v1, :cond_1

    .line 58
    sub-int/2addr v0, v4

    .line 59
    sub-int/2addr v0, v2

    .line 60
    :goto_1
    move v12, v3

    .line 61
    move v3, v0

    .line 62
    move v0, v12

    .line 63
    goto :goto_3

    .line 64
    :cond_1
    add-int/2addr v2, v4

    .line 65
    sub-int/2addr v0, v2

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->W(II)I

    .line 69
    move-result v2

    .line 70
    .line 71
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    .line 72
    .line 73
    if-lt v5, v2, :cond_2

    .line 74
    move v0, v3

    .line 75
    move v3, v2

    .line 76
    goto :goto_3

    .line 77
    :cond_2
    move v3, v2

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    move v0, v3

    .line 80
    goto :goto_3

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 84
    move-result v5

    .line 85
    .line 86
    :goto_2
    if-ge v1, v5, :cond_3

    .line 87
    .line 88
    add-int/lit8 v6, v5, -0x1

    .line 89
    .line 90
    if-ne v1, v6, :cond_5

    .line 91
    add-int/2addr v0, v4

    .line 92
    add-int/2addr v0, v2

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    add-int/2addr v2, v4

    .line 95
    add-int/2addr v0, v2

    .line 96
    .line 97
    add-int/lit8 v2, v1, 0x1

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->V(I)I

    .line 101
    move-result v6

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v2, v0}, Lcom/mobeta/android/dslv/DragSortListView;->W(II)I

    .line 105
    move-result v7

    .line 106
    .line 107
    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    .line 108
    .line 109
    if-ge v8, v7, :cond_6

    .line 110
    move v0, v3

    .line 111
    move v3, v7

    .line 112
    goto :goto_3

    .line 113
    :cond_6
    move v1, v2

    .line 114
    move v2, v6

    .line 115
    move v3, v7

    .line 116
    goto :goto_2

    .line 117
    .line 118
    .line 119
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 120
    move-result v2

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 124
    move-result v4

    .line 125
    .line 126
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 127
    .line 128
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 129
    .line 130
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 131
    .line 132
    iget-boolean v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 133
    .line 134
    if-eqz v8, :cond_a

    .line 135
    .line 136
    sub-int v8, v3, v0

    .line 137
    .line 138
    .line 139
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 140
    move-result v8

    .line 141
    .line 142
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    .line 143
    .line 144
    if-ge v9, v3, :cond_7

    .line 145
    move v12, v3

    .line 146
    move v3, v0

    .line 147
    move v0, v12

    .line 148
    .line 149
    :cond_7
    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 150
    .line 151
    const/high16 v11, 0x3f000000    # 0.5f

    .line 152
    mul-float/2addr v10, v11

    .line 153
    int-to-float v8, v8

    .line 154
    mul-float/2addr v10, v8

    .line 155
    float-to-int v8, v10

    .line 156
    int-to-float v10, v8

    .line 157
    add-int/2addr v3, v8

    .line 158
    .line 159
    sub-int v8, v0, v8

    .line 160
    .line 161
    if-ge v9, v3, :cond_8

    .line 162
    .line 163
    add-int/lit8 v0, v1, -0x1

    .line 164
    .line 165
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 166
    .line 167
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 168
    sub-int/2addr v3, v9

    .line 169
    int-to-float v0, v3

    .line 170
    mul-float/2addr v0, v11

    .line 171
    div-float/2addr v0, v10

    .line 172
    .line 173
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 174
    goto :goto_4

    .line 175
    .line 176
    :cond_8
    if-ge v9, v8, :cond_9

    .line 177
    .line 178
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 179
    .line 180
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 181
    goto :goto_4

    .line 182
    .line 183
    :cond_9
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 184
    .line 185
    add-int/lit8 v3, v1, 0x1

    .line 186
    .line 187
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 188
    sub-int/2addr v0, v9

    .line 189
    int-to-float v0, v0

    .line 190
    div-float/2addr v0, v10

    .line 191
    .line 192
    const/high16 v3, 0x3f800000    # 1.0f

    .line 193
    add-float/2addr v0, v3

    .line 194
    mul-float/2addr v0, v11

    .line 195
    .line 196
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 197
    goto :goto_4

    .line 198
    .line 199
    :cond_a
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 200
    .line 201
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 202
    .line 203
    :goto_4
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 204
    const/4 v3, 0x1

    .line 205
    .line 206
    if-ge v0, v2, :cond_b

    .line 207
    .line 208
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 209
    .line 210
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 211
    move v1, v2

    .line 212
    goto :goto_5

    .line 213
    .line 214
    :cond_b
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 218
    move-result v8

    .line 219
    sub-int/2addr v8, v4

    .line 220
    .line 221
    if-lt v0, v8, :cond_c

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 225
    move-result v0

    .line 226
    sub-int/2addr v0, v4

    .line 227
    .line 228
    add-int/lit8 v1, v0, -0x1

    .line 229
    .line 230
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 231
    .line 232
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 233
    .line 234
    :cond_c
    :goto_5
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 235
    .line 236
    if-ne v0, v5, :cond_e

    .line 237
    .line 238
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 239
    .line 240
    if-ne v0, v6, :cond_e

    .line 241
    .line 242
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 243
    .line 244
    cmpl-float v0, v0, v7

    .line 245
    .line 246
    if-eqz v0, :cond_d

    .line 247
    goto :goto_6

    .line 248
    :cond_d
    const/4 v0, 0x0

    .line 249
    goto :goto_7

    .line 250
    :cond_e
    :goto_6
    move v0, v3

    .line 251
    .line 252
    :goto_7
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 253
    .line 254
    if-eq v1, v4, :cond_10

    .line 255
    .line 256
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$d;

    .line 257
    .line 258
    if-eqz v0, :cond_f

    .line 259
    sub-int/2addr v4, v2

    .line 260
    .line 261
    sub-int v2, v1, v2

    .line 262
    .line 263
    .line 264
    invoke-interface {v0, v4, v2}, Lcom/mobeta/android/dslv/DragSortListView$d;->a(II)V

    .line 265
    .line 266
    :cond_f
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 267
    goto :goto_8

    .line 268
    :cond_10
    move v3, v0

    .line 269
    :goto_8
    return v3
.end method

.method static bridge synthetic m(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    return p0
.end method

.method private m0()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v1, v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 13
    move-result v2

    .line 14
    sub-int/2addr v1, v2

    .line 15
    int-to-float v2, v1

    .line 16
    int-to-float v3, v0

    .line 17
    .line 18
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 19
    mul-float/2addr v4, v2

    .line 20
    add-float/2addr v4, v3

    .line 21
    .line 22
    iput v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 23
    .line 24
    const/high16 v5, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 27
    sub-float/2addr v5, v6

    .line 28
    mul-float/2addr v5, v2

    .line 29
    add-float/2addr v5, v3

    .line 30
    .line 31
    iput v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 32
    float-to-int v2, v4

    .line 33
    .line 34
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    .line 35
    float-to-int v2, v5

    .line 36
    .line 37
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    .line 38
    sub-float/2addr v4, v3

    .line 39
    .line 40
    iput v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    .line 41
    add-int/2addr v0, v1

    .line 42
    int-to-float v0, v0

    .line 43
    sub-float/2addr v0, v5

    .line 44
    .line 45
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    .line 46
    return-void
.end method

.method static bridge synthetic n(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    return p0
.end method

.method static bridge synthetic o(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    return p0
.end method

.method static bridge synthetic p(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$e;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    return p0
.end method

.method static bridge synthetic r(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    return p0
.end method

.method static bridge synthetic s(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    return p0
.end method

.method static bridge synthetic t(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    return p0
.end method

.method static bridge synthetic u(Lcom/mobeta/android/dslv/DragSortListView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return-void
.end method

.method static bridge synthetic v(Lcom/mobeta/android/dslv/DragSortListView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return-void
.end method

.method static bridge synthetic w(Lcom/mobeta/android/dslv/DragSortListView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return-void
.end method

.method static bridge synthetic x(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->F(ILandroid/view/View;Z)V

    return-void
.end method

.method static bridge synthetic y(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->P(ILandroid/view/View;Z)V

    return-void
.end method

.method static bridge synthetic z(Lcom/mobeta/android/dslv/DragSortListView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->Q(Z)V

    return-void
.end method


# virtual methods
.method public K()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$f;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$f;->d(Z)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->N()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->L()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->E()V

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x3

    .line 26
    .line 27
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    .line 31
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public X()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method public Y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method protected b0(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    move-result v0

    .line 8
    .line 9
    and-int/lit16 v0, v0, 0xff

    .line 10
    const/4 v1, 0x4

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-eq v0, v2, :cond_3

    .line 14
    const/4 v3, 0x2

    .line 15
    .line 16
    if-eq v0, v3, :cond_2

    .line 17
    const/4 p1, 0x3

    .line 18
    .line 19
    if-eq v0, p1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 23
    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->K()V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->O()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 35
    move-result v0

    .line 36
    float-to-int v0, v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 40
    move-result p1

    .line 41
    float-to-int p1, p1

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->M(II)V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_3
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 48
    .line 49
    if-ne p1, v1, :cond_4

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->h0()Z

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->O()V

    .line 56
    :goto_0
    return v2
.end method

.method public c0(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$n;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$n;->remove(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->N()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->G()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->L()V

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 20
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 10
    .line 11
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->R(ILandroid/graphics/Canvas;)V

    .line 17
    .line 18
    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 19
    .line 20
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->R(ILandroid/graphics/Canvas;)V

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 37
    move-result v0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 43
    move-result v1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 46
    .line 47
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 51
    move-result v3

    .line 52
    .line 53
    if-gez v2, :cond_2

    .line 54
    neg-int v2, v2

    .line 55
    .line 56
    :cond_2
    if-ge v2, v3, :cond_3

    .line 57
    .line 58
    sub-int v2, v3, v2

    .line 59
    int-to-float v2, v2

    .line 60
    int-to-float v3, v3

    .line 61
    div-float/2addr v2, v3

    .line 62
    mul-float/2addr v2, v2

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v2, 0x0

    .line 65
    .line 66
    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    .line 67
    .line 68
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 69
    mul-float/2addr v4, v3

    .line 70
    mul-float/2addr v4, v2

    .line 71
    float-to-int v10, v4

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 75
    .line 76
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 77
    .line 78
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 79
    int-to-float v3, v3

    .line 80
    .line 81
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 82
    int-to-float v2, v2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    const/4 v2, 0x0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v7, 0x0

    .line 92
    int-to-float v8, v0

    .line 93
    int-to-float v9, v1

    .line 94
    .line 95
    const/16 v11, 0x1f

    .line 96
    move-object v5, p1

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 100
    .line 101
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 111
    :cond_4
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    const-string v0, "com.mobeta.android.dslv"

    invoke-static {v0, p0, p1}, Lcom/safedk/android/analytics/brandsafety/DetectTouchUtils;->viewOnTouch(Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public e0(FF)V
    .locals 2

    .line 1
    .line 2
    const/high16 v0, 0x3f000000    # 0.5f

    .line 3
    .line 4
    cmpl-float v1, p2, v0

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 12
    .line 13
    :goto_0
    cmpl-float p2, p1, v0

    .line 14
    .line 15
    if-lez p2, :cond_1

    .line 16
    .line 17
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 21
    .line 22
    .line 23
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->m0()V

    .line 30
    :cond_2
    return-void
.end method

.method public f0(IIII)Z
    .locals 8

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$k;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$k;->onCreateFloatView(I)Landroid/view/View;

    .line 14
    move-result-object v4

    .line 15
    .line 16
    if-nez v4, :cond_1

    .line 17
    return v1

    .line 18
    :cond_1
    move-object v2, p0

    .line 19
    move v3, p1

    .line 20
    move v5, p2

    .line 21
    move v6, p3

    .line 22
    move v7, p4

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v2 .. v7}, Lcom/mobeta/android/dslv/DragSortListView;->g0(ILandroid/view/View;III)Z

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_2
    :goto_0
    return v1
.end method

.method public g0(ILandroid/view/View;III)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 3
    .line 4
    if-nez v0, :cond_7

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 7
    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 11
    .line 12
    if-nez v0, :cond_7

    .line 13
    .line 14
    if-eqz p2, :cond_7

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 37
    move-result v0

    .line 38
    add-int/2addr p1, v0

    .line 39
    .line 40
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 41
    .line 42
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 43
    .line 44
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 45
    .line 46
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 47
    const/4 p1, 0x4

    .line 48
    .line 49
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 50
    .line 51
    iput p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 52
    .line 53
    iput-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->Z()V

    .line 57
    .line 58
    iput p4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    .line 59
    .line 60
    iput p5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    .line 61
    .line 62
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    .line 63
    .line 64
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragStartY:I

    .line 65
    .line 66
    iget-object p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 67
    .line 68
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    .line 69
    sub-int/2addr v0, p4

    .line 70
    .line 71
    iput v0, p3, Landroid/graphics/Point;->x:I

    .line 72
    sub-int/2addr p2, p5

    .line 73
    .line 74
    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 75
    .line 76
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 80
    move-result p3

    .line 81
    sub-int/2addr p2, p3

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    :cond_2
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 93
    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$h;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$h;->c()V

    .line 100
    .line 101
    :cond_3
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 102
    .line 103
    if-eq p1, v1, :cond_5

    .line 104
    const/4 p2, 0x2

    .line 105
    .line 106
    if-eq p1, p2, :cond_4

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_4
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 110
    .line 111
    .line 112
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    goto :goto_0

    .line 114
    .line 115
    :cond_5
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 116
    .line 117
    .line 118
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 119
    .line 120
    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->requestLayout()V

    .line 122
    .line 123
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$m;

    .line 124
    .line 125
    if-eqz p1, :cond_6

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$o;->e()V

    .line 129
    :cond_6
    return v1

    .line 130
    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 131
    return p1
.end method

.method public getFloatAlpha()F
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$c;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$c;->a()Landroid/widget/ListAdapter;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public h0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->i0(F)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public i0(F)Z
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$f;

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/mobeta/android/dslv/DragSortListView$f;->d(Z)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$i;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$o;->e()V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->S()V

    .line 22
    .line 23
    :goto_0
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$h;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$h;->d()V

    .line 31
    :cond_1
    return v0

    .line 32
    :cond_2
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public j0(F)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->i0(F)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method protected layoutChildren()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->Z()V

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    move-result v1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 37
    .line 38
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 39
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$h;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$h;->a()V

    .line 13
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->d0(Landroid/view/MotionEvent;)V

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 19
    move-result v1

    .line 20
    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 30
    return v0

    .line 31
    .line 32
    :cond_1
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 33
    .line 34
    :cond_2
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 35
    const/4 v3, 0x3

    .line 36
    const/4 v4, 0x0

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    move p1, v0

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 44
    move-result p1

    .line 45
    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 49
    move p1, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    move p1, v4

    .line 52
    .line 53
    :goto_0
    if-eq v1, v0, :cond_6

    .line 54
    .line 55
    if-eq v1, v3, :cond_6

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 60
    goto :goto_1

    .line 61
    :cond_5
    const/4 v2, 0x2

    .line 62
    .line 63
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 64
    goto :goto_1

    .line 65
    .line 66
    .line 67
    :cond_6
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->O()V

    .line 68
    .line 69
    :goto_1
    if-eq v1, v0, :cond_7

    .line 70
    .line 71
    if-ne v1, v3, :cond_8

    .line 72
    .line 73
    :cond_7
    iput-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 74
    :cond_8
    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    .line 11
    move-result p2

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->Z()V

    .line 17
    :cond_0
    const/4 p2, 0x1

    .line 18
    .line 19
    iput-boolean p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 20
    .line 21
    :cond_1
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 22
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->m0()V

    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    .line 19
    :cond_1
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->d0(Landroid/view/MotionEvent;)V

    .line 27
    .line 28
    :cond_2
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 29
    const/4 v2, 0x4

    .line 30
    const/4 v3, 0x1

    .line 31
    .line 32
    if-ne v0, v2, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->b0(Landroid/view/MotionEvent;)Z

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_3
    if-nez v0, :cond_4

    .line 39
    .line 40
    .line 41
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    move v1, v3

    .line 46
    .line 47
    .line 48
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 49
    move-result p1

    .line 50
    .line 51
    and-int/lit16 p1, p1, 0xff

    .line 52
    .line 53
    if-eq p1, v3, :cond_5

    .line 54
    const/4 v0, 0x3

    .line 55
    .line 56
    if-eq p1, v0, :cond_5

    .line 57
    .line 58
    if-eqz v1, :cond_6

    .line 59
    .line 60
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_5
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->O()V

    .line 65
    :cond_6
    :goto_0
    move v3, v1

    .line 66
    :goto_1
    return v3
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 8
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 2
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$c;

    invoke-direct {v0, p0, p1}, Lcom/mobeta/android/dslv/DragSortListView$c;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$c;

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 3
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$j;

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView$j;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$j;)V

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$d;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView$d;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/DragSortListView$d;)V

    .line 8
    :cond_1
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$n;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView$n;

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$n;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$c;

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$c;

    .line 10
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setCancelOnDataChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelOnDataChanged:Z

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    return-void
.end method

.method public setDragListener(Lcom/mobeta/android/dslv/DragSortListView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$d;

    return-void
.end method

.method public setDragScrollProfile(Lcom/mobeta/android/dslv/DragSortListView$e;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$e;

    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p1}, Lcom/mobeta/android/dslv/DragSortListView;->e0(FF)V

    .line 4
    return-void
.end method

.method public setDragSortListener(Lcom/mobeta/android/dslv/DragSortListView$g;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$j;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/DragSortListView$d;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$n;)V

    .line 10
    return-void
.end method

.method public setDropListener(Lcom/mobeta/android/dslv/DragSortListView$j;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$j;

    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    return-void
.end method

.method public setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$k;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$k;

    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    return-void
.end method

.method public setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$n;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$n;

    return-void
.end method
