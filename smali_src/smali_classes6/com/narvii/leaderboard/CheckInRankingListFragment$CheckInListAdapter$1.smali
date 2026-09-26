.class Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter$1;->this$1:Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter$1;->val$colors:[I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 8

    .line 1
    .line 2
    new-instance p1, Landroid/graphics/LinearGradient;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    int-to-float v4, p2

    .line 7
    .line 8
    iget-object v5, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter$1;->val$colors:[I

    .line 9
    const/4 p2, 0x3

    .line 10
    .line 11
    new-array v6, p2, [F

    .line 12
    .line 13
    .line 14
    fill-array-data v6, :array_0

    .line 15
    .line 16
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 17
    move-object v0, p1

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    :array_0
    .array-data 4
        0x0
        0x3d4ccccd    # 0.05f
        0x3f800000    # 1.0f
    .end array-data
.end method
