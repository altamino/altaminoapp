.class public final synthetic Lcom/narvii/post/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/post/DraftPostActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/post/DraftPostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/b;->a:Lcom/narvii/post/DraftPostActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/post/b;->a:Lcom/narvii/post/DraftPostActivity;

    invoke-static {v0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->v(Lcom/narvii/post/DraftPostActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
