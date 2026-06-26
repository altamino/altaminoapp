.class public abstract Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;
.super Lcom/narvii/list/NVListFragment;
.source "InterestPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/InterestPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InterestPickerBaseFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;
    }
.end annotation


# instance fields
.field private baseFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

.field protected btSkip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSkip()V
    .locals 2

    .line 317
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "Skip"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 318
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method protected abstract doSubmit()V
.end method

.method protected getData()Landroid/os/Bundle;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->baseFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    if-eqz v0, :cond_0

    .line 323
    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->access$300(Lcom/narvii/suggest/interest/InterestPickerFragment;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 325
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 346
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected getLanguageCode()Ljava/lang/String;
    .locals 1

    const-string v0, "contentLanguage"

    .line 330
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "content_language"

    .line 332
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 333
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getNextButtonText(II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0f1021

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const p1, 0x7f0f0c24

    .line 275
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTotalSteps(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public synthetic lambda$onViewCreated$0$InterestPickerFragment$InterestPickerBaseFragment(Landroid/view/View;)V
    .locals 0

    .line 243
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->showLast()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$1$InterestPickerFragment$InterestPickerBaseFragment(Landroid/view/View;)V
    .locals 0

    .line 260
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->doSubmit()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$2$InterestPickerFragment$InterestPickerBaseFragment(Landroid/view/View;)V
    .locals 0

    .line 268
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->doSkip()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 225
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 226
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 227
    instance-of v0, p1, Lcom/narvii/suggest/interest/InterestPickerFragment;

    if-eqz v0, :cond_0

    .line 228
    check-cast p1, Lcom/narvii/suggest/interest/InterestPickerFragment;

    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->baseFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 234
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090048

    .line 236
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eqz p2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->baseFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/narvii/suggest/interest/InterestPickerFragment;->access$000(Lcom/narvii/suggest/interest/InterestPickerFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->baseFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    invoke-static {v2}, Lcom/narvii/suggest/interest/InterestPickerFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerFragment;)I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 239
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_0
    new-instance v2, Lcom/narvii/suggest/interest/-$$Lambda$InterestPickerFragment$InterestPickerBaseFragment$g-0fR3s61vs8qGkyLOWwkc9L28U;

    invoke-direct {v2, p0}, Lcom/narvii/suggest/interest/-$$Lambda$InterestPickerFragment$InterestPickerBaseFragment$g-0fR3s61vs8qGkyLOWwkc9L28U;-><init>(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const p2, 0x7f09075d

    .line 247
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 249
    iget-object v3, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->baseFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/narvii/suggest/interest/InterestPickerFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerFragment;)I

    move-result v0

    .line 250
    :cond_2
    iget-object v3, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->baseFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/narvii/suggest/interest/InterestPickerFragment;->access$200(Lcom/narvii/suggest/interest/InterestPickerFragment;)I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getTotalSteps(I)I

    move-result v3

    .line 252
    invoke-virtual {p0, v0, v3}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getNextButtonText(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f09075e

    .line 254
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    if-ge v0, v3, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    .line 256
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_5
    new-instance v0, Lcom/narvii/suggest/interest/-$$Lambda$InterestPickerFragment$InterestPickerBaseFragment$3zBT4zTmfRFZ76Zm8TZV98a5MAU;

    invoke-direct {v0, p0}, Lcom/narvii/suggest/interest/-$$Lambda$InterestPickerFragment$InterestPickerBaseFragment$3zBT4zTmfRFZ76Zm8TZV98a5MAU;-><init>(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const p2, 0x7f090a4d

    .line 264
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->btSkip:Landroid/widget/TextView;

    .line 265
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->btSkip:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 266
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->showSkip()Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 v1, 0x0

    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->btSkip:Landroid/widget/TextView;

    new-instance p2, Lcom/narvii/suggest/interest/-$$Lambda$InterestPickerFragment$InterestPickerBaseFragment$IydpkGvFuNY7vtt6o6VFeJ_9l_4;

    invoke-direct {p2, p0}, Lcom/narvii/suggest/interest/-$$Lambda$InterestPickerFragment$InterestPickerBaseFragment$IydpkGvFuNY7vtt6o6VFeJ_9l_4;-><init>(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method

.method protected showLast()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->baseFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->showLast()V

    :cond_0
    return-void
.end method

.method protected showNext(Landroid/os/Bundle;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->baseFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 302
    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->access$300(Lcom/narvii/suggest/interest/InterestPickerFragment;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->baseFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    invoke-virtual {p1}, Lcom/narvii/suggest/interest/InterestPickerFragment;->showNext()V

    :cond_1
    return-void
.end method

.method protected showSkip()Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->baseFragment:Lcom/narvii/suggest/interest/InterestPickerFragment;

    if-eqz v0, :cond_0

    .line 310
    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->access$400(Lcom/narvii/suggest/interest/InterestPickerFragment;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
