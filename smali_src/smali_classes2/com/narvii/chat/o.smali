.class public final synthetic Lcom/narvii/chat/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/ChatGoLivePickerDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/ChatGoLivePickerDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/o;->a:Lcom/narvii/chat/ChatGoLivePickerDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/o;->a:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {v0, p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->c(Lcom/narvii/chat/ChatGoLivePickerDialog;Landroid/view/View;)V

    return-void
.end method
