.class public final enum Lcom/narvii/account/LoginActivity$PromptType;
.super Ljava/lang/Enum;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PromptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/account/LoginActivity$PromptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/account/LoginActivity$PromptType;

.field public static final enum Button:Lcom/narvii/account/LoginActivity$PromptType;

.field public static final enum Launch:Lcom/narvii/account/LoginActivity$PromptType;

.field public static final enum Required:Lcom/narvii/account/LoginActivity$PromptType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 116
    new-instance v0, Lcom/narvii/account/LoginActivity$PromptType;

    const/4 v1, 0x0

    const-string v2, "Launch"

    invoke-direct {v0, v2, v1}, Lcom/narvii/account/LoginActivity$PromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/account/LoginActivity$PromptType;->Launch:Lcom/narvii/account/LoginActivity$PromptType;

    .line 117
    new-instance v0, Lcom/narvii/account/LoginActivity$PromptType;

    const/4 v2, 0x1

    const-string v3, "Button"

    invoke-direct {v0, v3, v2}, Lcom/narvii/account/LoginActivity$PromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/account/LoginActivity$PromptType;->Button:Lcom/narvii/account/LoginActivity$PromptType;

    .line 118
    new-instance v0, Lcom/narvii/account/LoginActivity$PromptType;

    const/4 v3, 0x2

    const-string v4, "Required"

    invoke-direct {v0, v4, v3}, Lcom/narvii/account/LoginActivity$PromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/narvii/account/LoginActivity$PromptType;

    .line 115
    sget-object v4, Lcom/narvii/account/LoginActivity$PromptType;->Launch:Lcom/narvii/account/LoginActivity$PromptType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/narvii/account/LoginActivity$PromptType;->Button:Lcom/narvii/account/LoginActivity$PromptType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/narvii/account/LoginActivity$PromptType;->$VALUES:[Lcom/narvii/account/LoginActivity$PromptType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/account/LoginActivity$PromptType;
    .locals 1

    .line 115
    const-class v0, Lcom/narvii/account/LoginActivity$PromptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/account/LoginActivity$PromptType;

    return-object p0
.end method

.method public static values()[Lcom/narvii/account/LoginActivity$PromptType;
    .locals 1

    .line 115
    sget-object v0, Lcom/narvii/account/LoginActivity$PromptType;->$VALUES:[Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {v0}, [Lcom/narvii/account/LoginActivity$PromptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/account/LoginActivity$PromptType;

    return-object v0
.end method
