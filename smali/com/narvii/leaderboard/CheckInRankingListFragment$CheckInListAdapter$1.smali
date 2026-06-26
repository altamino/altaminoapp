.class Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "CheckInRankingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->getCellDrawable(I)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;

.field final synthetic val$colors:[I


# direct methods
.method constructor <init>(Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;[I)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter$1;->this$1:Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;

    iput-object p2, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter$1;->val$colors:[I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 8

    .line 510
    new-instance p1, Landroid/graphics/LinearGradient;

    int-to-float v4, p2

    iget-object v5, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter$1;->val$colors:[I

    const/4 p2, 0x3

    new-array v6, p2, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3d4ccccd    # 0.05f
        0x3f800000    # 1.0f
    .end array-data
.end method
