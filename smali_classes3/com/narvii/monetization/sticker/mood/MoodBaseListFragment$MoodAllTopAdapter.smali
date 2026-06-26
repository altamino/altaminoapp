.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$MoodAllTopAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MoodBaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoodAllTopAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$MoodAllTopAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 364
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const p1, 0x7f0b004b

    .line 384
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090bbd

    .line 385
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridLayout;

    .line 386
    iget-object p3, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$MoodAllTopAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {p3, v0, p2, v1, v2}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->access$500(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Lcom/narvii/onlinestatus/LockInfo;Landroid/widget/GridLayout;II)V

    return-object p1
.end method
