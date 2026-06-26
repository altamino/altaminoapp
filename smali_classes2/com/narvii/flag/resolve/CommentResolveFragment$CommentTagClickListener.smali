.class Lcom/narvii/flag/resolve/CommentResolveFragment$CommentTagClickListener;
.super Lcom/narvii/util/text/DefaultTagClickListener;
.source "CommentResolveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/flag/resolve/CommentResolveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentTagClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;


# direct methods
.method private constructor <init>(Lcom/narvii/flag/resolve/CommentResolveFragment;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$CommentTagClickListener;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    invoke-direct {p0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected startActivity(Landroid/view/View;Landroid/content/Intent;)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$CommentTagClickListener;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
