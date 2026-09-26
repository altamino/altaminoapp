.class public Lcom/narvii/language/LanguageSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public code:Ljava/lang/String;

.field public localizedName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public selected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/language/LanguageSpec;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/language/LanguageSpec;->localizedName:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    return-void
.end method
