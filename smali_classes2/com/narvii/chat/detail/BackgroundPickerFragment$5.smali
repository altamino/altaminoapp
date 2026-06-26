.class Lcom/narvii/chat/detail/BackgroundPickerFragment$5;
.super Ljava/lang/Object;
.source "BackgroundPickerFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/BackgroundPickerFragment;->setBackground(Lcom/narvii/model/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$5;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 189
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment$5;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
