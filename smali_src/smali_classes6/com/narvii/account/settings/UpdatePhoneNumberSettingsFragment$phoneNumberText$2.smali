.class final Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment$phoneNumberText$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment$phoneNumberText$2;->this$0:Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment$phoneNumberText$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment$phoneNumberText$2;->this$0:Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;

    .line 2
    iget-object v0, v0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
