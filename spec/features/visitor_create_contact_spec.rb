require "spec_helper"

feature "Contact Creation" do #проверяем функционал Contact
  scenario "allows acees to contacts page" do# Первый сценарий когда есть просто доступ к этой странице(не зарегестрированого пользователя)
      visit '/contacts'#На какую страницу перейти

      #expect(page).to have_content  'New Contacts'
      expect(page).to have_content I18n.t 'contacts.contact_us'#Ожидаем получить какойто текст
  end   

  scenario "allows a guest to create contact" do# Второй сценарий может создать сообщение и в ответ он получить такой ответ Crete Contacts (текст)
    visit '/contacts'#На какую страницу перейти
    
    fill_in :contact_email, :with => 'user@example.com'#Заполнить поле
    fill_in :contact_message, :with => 'something'#Заполнить поле

    # fill_in :contact_email, with:  'user@example.com'
    # fill_in :contact_message, with: 'something'

    click_button 'Send message'#Нажатие кнопки

    expect(page).to have_content 'Crete Contacts'#Ожидаем получить какойто текст

  end
end