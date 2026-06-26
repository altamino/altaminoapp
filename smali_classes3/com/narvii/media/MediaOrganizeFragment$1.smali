.class Lcom/narvii/media/MediaOrganizeFragment$1;
.super Ljava/lang/Object;
.source "MediaOrganizeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaOrganizeFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaOrganizeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaOrganizeFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$1;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$1;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-virtual {p1}, Lcom/narvii/media/MediaOrganizeFragment;->pickAllAndReturn()V

    return-void
.end method
