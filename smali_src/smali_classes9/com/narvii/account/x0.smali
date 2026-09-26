.class public final synthetic Lcom/narvii/account/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/narvii/account/SignUpFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/SignUpFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/x0;->a:Lcom/narvii/account/SignUpFragment;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/x0;->a:Lcom/narvii/account/SignUpFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/narvii/account/SignUpFragment;->t(Lcom/narvii/account/SignUpFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
