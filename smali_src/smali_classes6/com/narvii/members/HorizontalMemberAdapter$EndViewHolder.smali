.class Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;->this$0:Lcom/narvii/members/HorizontalMemberAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f0a0171

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;->avatar:Lcom/narvii/widget/NVImageView;

    .line 17
    return-void
.end method
