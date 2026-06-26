.class Lcom/narvii/amino/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/MainActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/amino/MainActivity$3;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/amino/MainActivity$3;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/narvii/amino/MainActivity$3$1;->this$1:Lcom/narvii/amino/MainActivity$3;

    iput-object p2, p0, Lcom/narvii/amino/MainActivity$3$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/User;)V
    .locals 0

    .line 524
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$3$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 521
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/amino/MainActivity$3$1;->call(Lcom/narvii/model/User;)V

    return-void
.end method
