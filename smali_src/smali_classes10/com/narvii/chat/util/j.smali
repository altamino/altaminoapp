.class public final synthetic Lcom/narvii/chat/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/narvii/chat/util/j;->b:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/util/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/narvii/chat/util/j;->b:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/util/ChatRequestHelper;->b(Landroid/content/Context;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Object;)V

    return-void
.end method
