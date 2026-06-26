.class Lcom/narvii/story/ShareStoryFragment$BlankAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "ShareStoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/ShareStoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlankAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/ShareStoryFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/ShareStoryFragment;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment$BlankAdapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    .line 213
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b061a

    .line 218
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
