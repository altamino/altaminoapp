.class public final Lcom/narvii/video/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CoordinatorLayout:[I

.field public static final CoordinatorLayout_Layout:[I

.field public static final CoordinatorLayout_Layout_android_layout_gravity:I = 0x0

.field public static final CoordinatorLayout_Layout_layout_anchor:I = 0x1

.field public static final CoordinatorLayout_Layout_layout_anchorGravity:I = 0x2

.field public static final CoordinatorLayout_Layout_layout_behavior:I = 0x3

.field public static final CoordinatorLayout_Layout_layout_dodgeInsetEdges:I = 0x4

.field public static final CoordinatorLayout_Layout_layout_insetEdge:I = 0x5

.field public static final CoordinatorLayout_Layout_layout_keyline:I = 0x6

.field public static final CoordinatorLayout_keylines:I = 0x0

.field public static final CoordinatorLayout_statusBarBackground:I = 0x1

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x3

.field public static final FontFamilyFont_fontStyle:I = 0x4

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x2

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x4

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x6

.field public static final RecyclerView_layoutManager:I = 0x7

.field public static final RecyclerView_reverseLayout:I = 0x8

.field public static final RecyclerView_spanCount:I = 0x9

.field public static final RecyclerView_stackFromEnd:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 224
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/video/R$styleable;->CoordinatorLayout:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 227
    fill-array-data v0, :array_1

    sput-object v0, Lcom/narvii/video/R$styleable;->CoordinatorLayout_Layout:[I

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 235
    fill-array-data v1, :array_2

    sput-object v1, Lcom/narvii/video/R$styleable;->FontFamily:[I

    new-array v0, v0, [I

    .line 242
    fill-array-data v0, :array_3

    sput-object v0, Lcom/narvii/video/R$styleable;->FontFamilyFont:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 249
    fill-array-data v0, :array_4

    sput-object v0, Lcom/narvii/video/R$styleable;->RecyclerView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04015e
        0x7f040283
    .end array-data

    :array_1
    .array-data 4
        0x10100b3
        0x7f040167
        0x7f040168
        0x7f040169
        0x7f040174
        0x7f040179
        0x7f04017a
    .end array-data

    :array_2
    .array-data 4
        0x7f04010d
        0x7f04010e
        0x7f04010f
        0x7f040110
        0x7f040111
        0x7f040112
    .end array-data

    :array_3
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f04010b
        0x7f040113
        0x7f040114
    .end array-data

    :array_4
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f0400ff
        0x7f040100
        0x7f040101
        0x7f040102
        0x7f040103
        0x7f040166
        0x7f040216
        0x7f04025b
        0x7f04027e
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
