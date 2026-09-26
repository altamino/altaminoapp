.class public final synthetic Lcom/narvii/account/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/AccountBaseFragment;

.field public final synthetic b:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/AccountBaseFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/b;->a:Lcom/narvii/account/AccountBaseFragment;

    iput-object p2, p0, Lcom/narvii/account/b;->b:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/account/b;->a:Lcom/narvii/account/AccountBaseFragment;

    iget-object v1, p0, Lcom/narvii/account/b;->b:Lcom/narvii/util/http/ApiRequest;

    invoke-static {v0, v1, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->n(Lcom/narvii/account/AccountBaseFragment;Lcom/narvii/util/http/ApiRequest;Landroid/content/DialogInterface;I)V

    return-void
.end method
