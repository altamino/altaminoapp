.class Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HorizontalMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/members/HorizontalMemberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndViewHolder"
.end annotation


# instance fields
.field avatar:Lcom/narvii/widget/NVImageView;

.field final synthetic this$0:Lcom/narvii/members/HorizontalMemberAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/members/HorizontalMemberAdapter;Landroid/view/View;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;->this$0:Lcom/narvii/members/HorizontalMemberAdapter;

    .line 129
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900e4

    .line 130
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;->avatar:Lcom/narvii/widget/NVImageView;

    return-void
.end method
