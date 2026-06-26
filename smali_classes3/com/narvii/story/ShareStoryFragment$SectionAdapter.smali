.class Lcom/narvii/story/ShareStoryFragment$SectionAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "ShareStoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/ShareStoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SectionAdapter"
.end annotation


# instance fields
.field resId:I

.field final synthetic this$0:Lcom/narvii/story/ShareStoryFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/ShareStoryFragment;I)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment$SectionAdapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    .line 198
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 199
    iput p2, p0, Lcom/narvii/story/ShareStoryFragment$SectionAdapter;->resId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b061c

    .line 204
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0909f0

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 206
    iget p3, p0, Lcom/narvii/story/ShareStoryFragment$SectionAdapter;->resId:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method
