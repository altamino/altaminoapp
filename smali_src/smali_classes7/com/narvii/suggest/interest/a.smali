.class public final synthetic Lcom/narvii/suggest/interest/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/suggest/interest/GenderListDialog$GenderAdapter$Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/suggest/interest/GenderListDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/suggest/interest/GenderListDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/suggest/interest/a;->a:Lcom/narvii/suggest/interest/GenderListDialog;

    return-void
.end method


# virtual methods
.method public final onClickGender(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/suggest/interest/a;->a:Lcom/narvii/suggest/interest/GenderListDialog;

    invoke-static {v0, p1}, Lcom/narvii/suggest/interest/GenderListDialog;->a(Lcom/narvii/suggest/interest/GenderListDialog;Ljava/lang/Integer;)V

    return-void
.end method
