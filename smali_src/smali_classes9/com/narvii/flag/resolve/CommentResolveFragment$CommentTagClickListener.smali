.class Lcom/narvii/flag/resolve/CommentResolveFragment$CommentTagClickListener;
.super Lcom/narvii/util/text/DefaultTagClickListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$CommentTagClickListener;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected startActivity(Landroid/view/View;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$CommentTagClickListener;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/CommentResolveFragment$CommentTagClickListener;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 6
    return-void
.end method
