.class public final synthetic Lcom/narvii/chat/util/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/util/dialog/ProgressDialog;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/l;->a:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p2, p0, Lcom/narvii/chat/util/l;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/util/l;->a:Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/chat/util/l;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/util/ChatRequestHelper;->d(Lcom/narvii/util/dialog/ProgressDialog;Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method
