.class public final synthetic Lcom/narvii/master/home/profile/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/narvii/feed/BackgroundPostHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/feed/BackgroundPostHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/profile/b0;->a:Lcom/narvii/feed/BackgroundPostHelper;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/profile/b0;->a:Lcom/narvii/feed/BackgroundPostHelper;

    invoke-static {v0, p1}, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->a(Lcom/narvii/feed/BackgroundPostHelper;Landroid/content/DialogInterface;)V

    return-void
.end method
