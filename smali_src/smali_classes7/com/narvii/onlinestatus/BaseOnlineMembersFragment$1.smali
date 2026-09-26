.class Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$1;->this$0:Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$1;->this$0:Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->updateTitle(I)V

    .line 6
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
