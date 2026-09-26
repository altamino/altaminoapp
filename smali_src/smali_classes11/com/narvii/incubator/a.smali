.class public final synthetic Lcom/narvii/incubator/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/incubator/LanguageChooseDialog;

.field public final synthetic b:Lcom/narvii/language/ContentLanguageService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/incubator/LanguageChooseDialog;Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/incubator/a;->a:Lcom/narvii/incubator/LanguageChooseDialog;

    iput-object p2, p0, Lcom/narvii/incubator/a;->b:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/narvii/language/LanguageSpec;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/incubator/a;->a:Lcom/narvii/incubator/LanguageChooseDialog;

    iget-object v1, p0, Lcom/narvii/incubator/a;->b:Lcom/narvii/language/ContentLanguageService;

    invoke-static {v0, v1, p1}, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->a(Lcom/narvii/incubator/LanguageChooseDialog;Lcom/narvii/language/ContentLanguageService;Lcom/narvii/language/LanguageSpec;)V

    return-void
.end method
