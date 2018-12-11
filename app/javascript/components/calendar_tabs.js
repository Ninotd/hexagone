function setActive(array, element) {
  array.forEach((a) => {
    a.classList.remove('active');
  });
  element.classList.add('active');
}

function activeTabs() {
  const tabs = document.querySelectorAll('.calendars-tabs li');
  tabs.forEach((tab) => {
    tab.addEventListener('click', (e) => {
      setActive(tabs, e.currentTarget);
      const tabTarget = document.getElementById(e.currentTarget.dataset.target);
      const contentTabs = document.querySelectorAll('.calendars-tab-content');
      setActive(contentTabs, tabTarget);
    });
  });
}

export { activeTabs };
