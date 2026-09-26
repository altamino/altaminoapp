.class public final synthetic Lcom/narvii/user/profile/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/user/profile/adapter/a;->a:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/user/profile/adapter/a;->a:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

    invoke-static {v0, p1, p2}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->f(Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method
