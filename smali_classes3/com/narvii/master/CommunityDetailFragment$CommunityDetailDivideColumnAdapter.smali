.class Lcom/narvii/master/CommunityDetailFragment$CommunityDetailDivideColumnAdapter;
.super Lcom/narvii/list/DivideColumnAdapter;
.source "CommunityDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunityDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommunityDetailDivideColumnAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1839
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$CommunityDetailDivideColumnAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 1840
    invoke-direct {p0, p2}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 1841
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/app/NVContext;II)V
    .locals 0

    .line 1844
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$CommunityDetailDivideColumnAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 1845
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    const/4 p1, 0x1

    .line 1846
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method public createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 1851
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    .line 1852
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1858
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    .line 1859
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method
