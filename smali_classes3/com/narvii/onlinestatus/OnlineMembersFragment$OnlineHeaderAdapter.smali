.class Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "OnlineMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onlinestatus/OnlineMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/onlinestatus/OnlineMembersFragment;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineHeaderAdapter;->this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;

    .line 198
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 209
    sget-object p1, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->SECTION_HEADER:Lcom/narvii/util/Tag;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b0567

    .line 240
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090b5b

    .line 241
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0f0ce0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    return-object p1

    :cond_0
    const p1, 0x7f0b0568

    .line 244
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
