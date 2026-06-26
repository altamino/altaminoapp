.class public final synthetic Lcom/narvii/story/-$$Lambda$ShareStoryFragment$clc-VjhqCY-lRW90oURAqaJKXLU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/story/ShareStoryFragment;

.field private final synthetic f$1:Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/ShareStoryFragment;Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$clc-VjhqCY-lRW90oURAqaJKXLU;->f$0:Lcom/narvii/story/ShareStoryFragment;

    iput-object p2, p0, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$clc-VjhqCY-lRW90oURAqaJKXLU;->f$1:Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$clc-VjhqCY-lRW90oURAqaJKXLU;->f$0:Lcom/narvii/story/ShareStoryFragment;

    iget-object v1, p0, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$clc-VjhqCY-lRW90oURAqaJKXLU;->f$1:Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/story/ShareStoryFragment;->lambda$toStoryPost$0$ShareStoryFragment(Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;Landroid/content/DialogInterface;)V

    return-void
.end method
